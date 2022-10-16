package com.kh.realfinal.politics.api;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.kh.realfinal.financialStock.model.vo.Financialterm;
import com.kh.realfinal.politics.model.vo.LawProposed;
import com.kh.realfinal.politics.model.vo.ProfileMna;

public class LawProposedAPI {

//	국회의원 발의법률안
//	https://open.assembly.go.kr/portal/openapi/nzmimeepazxkubdpn?KEY=006bb9e8010046a4a05f20524d79047d	
	
	public static String key = "006bb9e8010046a4a05f20524d79047d";
	public static String LawProposed_XML_URL = "https://open.assembly.go.kr/portal/openapi/nzmimeepazxkubdpn";
	
	public static void main(String[] args) {
		List<LawProposed> list = new ArrayList<LawProposed>();
		for(int i = 1; i< 18; i++) {
			List<LawProposed> templist = LawProposedAPI.callLawProposedByXML(i);
			list.addAll(templist);
		}
		for(int i = 0; i <list.size(); i++) {
			LawProposed law = list.get(i);
			System.out.println(law);
		}
		System.out.println("size : " + list.size());
	}
	
	public static List<LawProposed> callLawProposedByXML(int page) {
		List<LawProposed> list = new ArrayList<LawProposed>();
		
		int pIndex = page; // 페이지 위치	
		int pSize = 1000; // 페이지 당 요청 숫자 / 1,000개 넘길수 없음. / 토탈 15996개 <list_total_count> 
		String type = "XML"; // 호출 문서
		int ageDae = 21; // 대수 ex. '21' 대
		
		System.out.println();
//		System.out.println("pageNumber : " + pIndex);
		StringBuilder urlBuilder = new StringBuilder(LawProposed_XML_URL);
		urlBuilder.append("?" + "KEY=" + key);
		urlBuilder.append("&" + "Type=" + type);
		urlBuilder.append("&" + "pIndex=" + pIndex);
		urlBuilder.append("&" + "pSize=" + pSize);
		urlBuilder.append("&" + "AGE=" + ageDae);
		System.out.println(urlBuilder);

		try {
			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", "application/xml");

			int code = conn.getResponseCode();
			System.out.println("Response Code : " + code);
			if (code < 200 || code >= 300) {
				System.out.println("페이지가 잘못되었습니다.");
				return null;
			}

//				# 2. 페이지에 접근해줄 Document객체 생성
//				 - 여기서 생성한 document객체를 통해 파싱할 url의 요소를 읽어 들인다.
//				doc.getDocumentElement().getNodeName())를 출력하면 위 XML의 최상위 tag값을 가져온다. 
//				여기서는 <nzmimeepazxkubdpn>가 최상위 tag값이다. 

			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document doc = db.parse(conn.getInputStream());

			// root tag
			doc.getDocumentElement().normalize();

			System.out.println("Root Element : " + doc.getDocumentElement().getNodeName());
			System.out.println("=======================" + pIndex + "페이지시작=========================");
			// Root element: nzmimeepazxkubdpn

			NodeList nList = doc.getElementsByTagName("row");
			System.out.println("파싱할 대표발의안 수 : " + nList.getLength());

			for (int i = 1; i < nList.getLength(); i++) {
				Node node = nList.item(i);
//				System.out.println("\nCurrent Element : " + node.getNodeName());

				if (node.getNodeType() == Node.ELEMENT_NODE) {
					Element eElement = (Element) node;
 
//					System.out.println("rstProposer : "  + eElement.getElementsByTagName("RST_PROPOSER").item(0).getTextContent());
					
//					int lowNo = i;
					int lowNo = Integer.parseInt(eElement.getElementsByTagName("BILL_NO").item(0).getTextContent());
					String rstProposer = eElement.getElementsByTagName("RST_PROPOSER").item(0).getTextContent();
					int age = Integer.parseInt(eElement.getElementsByTagName("AGE").item(0).getTextContent());
					String billName = eElement.getElementsByTagName("BILL_NAME").item(0).getTextContent();
					String proposer = eElement.getElementsByTagName("PROPOSER").item(0).getTextContent();
					String committee = eElement.getElementsByTagName("COMMITTEE").item(0).getTextContent();
					String proposeDt = eElement.getElementsByTagName("PROPOSE_DT").item(0).getTextContent();
					String procResult = eElement.getElementsByTagName("PROC_RESULT").item(0).getTextContent();
					String detailLink = eElement.getElementsByTagName("DETAIL_LINK").item(0).getTextContent();

					LawProposed law = new LawProposed
							(lowNo, rstProposer, age, billName, proposer, 
									committee, proposeDt, procResult, detailLink);
					list.add(law);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
