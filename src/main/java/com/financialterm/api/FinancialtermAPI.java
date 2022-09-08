package com.financialterm.api;

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


import com.fintech.mvc.financialterm.model.vo.Financialterm;

public class FinancialtermAPI {
	
	public static String key = "PCNxso2TMGeSrjPMsBxvOscmyUmaYllFFoSb%2BN%2BjMnDf4gSitSdIZjC3290UCja4ki92iGwbCXZv6utvCT0IAg%3D%3D";
	// 기본 정보 url
		public static String Financialterm_XML_URL = "http://api.seibro.or.kr/openapi/service/FnTermSvc/getFinancialTermMeaning";
	public static void main(String[] args) {
		FinancialtermAPI.callFinancialtermByXML();
	}
		
	public static List<Financialterm> callFinancialtermByXML() {
		List<Financialterm> list = new ArrayList<Financialterm>();
		int pageNo = 1;
		int numOfRows = 1349;
		
		while (true) {
			// 1. URL 가공
			System.out.println();
			System.out.println("pageNumber : " + pageNo);
			StringBuilder urlBuilder = new StringBuilder(Financialterm_XML_URL);
			
			urlBuilder.append("?" + "serviceKey=" + key);
			urlBuilder.append("&" + "pageNo=" + pageNo);
			urlBuilder.append("&" + "numOfRows=" + numOfRows);
			System.out.println(urlBuilder);
			
			try {
				// 2. URL을 http 객체를 통해 요청
				URL url = new URL(urlBuilder.toString());
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();
				conn.setRequestMethod("GET");
				// conn.setRequestProperty("Content-type", "application/json");
				conn.setRequestProperty("Accept", "application/xml");
				
				int code = conn.getResponseCode();
				System.out.println("Response code: " + code);
				if (code < 200 || code >= 300) {
					System.out.println("페이지가 잘못되었습니다.");
					return null;
				}
				
				// 3. 해석부
				DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
				DocumentBuilder db = dbf.newDocumentBuilder();
				Document doc = db.parse(conn.getInputStream());
				doc.getDocumentElement().normalize();
				
				System.out.println("Root Element : " + doc.getDocumentElement().getNodeName()); // XML의 최상위 tag값을 가져온다.
				System.out.println("=======================" + pageNo + "페이지 시작==============================");
				
				NodeList nList = doc.getElementsByTagName("item");
				//nList >> 가져오는 아이템 이고  얘가 없으면. break; while문 종료
				System.out.println("nList.getLength() : "+nList.getLength());
				if(nList.getLength() < 1) {
					break;
				}
				for (int j = 0; j < nList.getLength(); j++) {
					Node node = nList.item(j);
//					System.out.println("\nCurrent Element : " + node.getNodeName());

					if (node.getNodeType() == Node.ELEMENT_NODE) {
						Element eElement = (Element) node;
						System.out.println("fnceDictNm : "  + eElement.getElementsByTagName("fnceDictNm").item(0).getTextContent());
						
						String fnceDictNm = eElement.getElementsByTagName("fnceDictNm").item(0).getTextContent();
						
						String ksdFnceDictDescContent = "";
						if(eElement.getElementsByTagName("ksdFnceDictDescContent").item(0) != null){
							ksdFnceDictDescContent = eElement.getElementsByTagName("ksdFnceDictDescContent").item(0).getTextContent();
						}
					
					Financialterm ft = new Financialterm(fnceDictNm, ksdFnceDictDescContent);
					list.add(ft);
					}
				}
				pageNo++;
				if(pageNo == 2) {
					break;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return list;
	}
}
