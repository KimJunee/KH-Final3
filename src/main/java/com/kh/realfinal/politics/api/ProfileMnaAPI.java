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

import com.kh.realfinal.financialStock.model.vo.Stockprice;
import com.kh.realfinal.politics.model.vo.ProfileMna;

public class ProfileMnaAPI {

//	국회의원 인적사항
//	https://open.assembly.go.kr/portal/openapi/nwvrqwxyaytdsfvhu?KEY=006bb9e8010046a4a05f20524d79047d&pIndex=1&pSize=300

//  파싱 참고 웹사이트
//	https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=nonamed0000&logNo=220988048654 	

	// parsing할 url 지정(API 키 포함해서)
	public static String key = "006bb9e8010046a4a05f20524d79047d";
	public static String ProfileMna_XML_URL = "https://open.assembly.go.kr/portal/openapi/nwvrqwxyaytdsfvhu";

	public static void main(String[] args) {
		List<ProfileMna> list = ProfileMnaAPI.callProfileMnaByXML();
		for (int i = 0; i < list.size(); i++) {
			ProfileMna pro = list.get(i);
			System.out.println(pro.toString2());
		}
		
//		for (ProfileMna pro : list) {
//			System.out.println(pro.toString2());
//			if(pro.getHgNm().equals("황희")) {
//				System.out.println(pro.getHgNm());
//				System.out.println(pro.getBthDate());
//			}
//		}
		
		
//		Map<String, ProfileMna> map = new HashMap<>();
//		for (ProfileMna pro : list) {
//			map.put(pro.getHgNm(), pro);
//		}
//		System.out.println(map.get("황희"));
//		System.out.println(map.get("배현진"));
	}

	private static List<ProfileMna> callProfileMnaByXML() {
		List<ProfileMna> list = new ArrayList<ProfileMna>();

		int pageNo = 1;
		String pIndex = "1"; //
		String pSize = "300"; //
		String type = "XML";

		System.out.println();
		System.out.println("pageNumber : " + pageNo);
		StringBuilder urlBuilder = new StringBuilder(ProfileMna_XML_URL);
		urlBuilder.append("?" + "KEY=" + key);
		urlBuilder.append("&" + "Type=" + type);
		urlBuilder.append("&" + "pIndex=" + pIndex);
		urlBuilder.append("&" + "pSize=" + pSize);
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
//				여기서는 <nwvrqwxyaytdsfvhu>가 최상위 tag값이다. 

			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document doc = db.parse(conn.getInputStream());

			// root tag
			doc.getDocumentElement().normalize();

			System.out.println("Root Element : " + doc.getDocumentElement().getNodeName());
			System.out.println("=======================" + pageNo + "페이지시작=========================");
			// Root element: nwvrqwxyaytdsfvhu

			NodeList nList = doc.getElementsByTagName("row");
			System.out.println("파싱할 국회의원 수 : " + nList.getLength());

			for (int i = 0; i < nList.getLength(); i++) {
				Node node = nList.item(i);
//				System.out.println("\nCurrent Element : " + node.getNodeName());

				if (node.getNodeType() == Node.ELEMENT_NODE) {
					Element eElement = (Element) node;
 
					String hgNm = eElement.getElementsByTagName("HG_NM").item(0).getTextContent();
					String units = eElement.getElementsByTagName("UNITS").item(0).getTextContent();
					String sexGbnNm = eElement.getElementsByTagName("SEX_GBN_NM").item(0).getTextContent();
					String hjNm = eElement.getElementsByTagName("HJ_NM").item(0).getTextContent();
					String engNm = eElement.getElementsByTagName("ENG_NM").item(0).getTextContent();
					String bthDate = eElement.getElementsByTagName("BTH_DATE").item(0).getTextContent();
					String polyNm = eElement.getElementsByTagName("POLY_NM").item(0).getTextContent();
					String origNm = eElement.getElementsByTagName("ORIG_NM").item(0).getTextContent();
					String electGbnNm = eElement.getElementsByTagName("ELECT_GBN_NM").item(0).getTextContent();
					String cmits = eElement.getElementsByTagName("CMITS").item(0).getTextContent();
					String reeleGbnNm = eElement.getElementsByTagName("REELE_GBN_NM").item(0).getTextContent();
					String telNo = eElement.getElementsByTagName("TEL_NO").item(0).getTextContent();
					String email = eElement.getElementsByTagName("E_MAIL").item(0).getTextContent();
					String homepage = eElement.getElementsByTagName("HOMEPAGE").item(0).getTextContent();
					String staff = eElement.getElementsByTagName("STAFF").item(0).getTextContent();
					String secretary = eElement.getElementsByTagName("SECRETARY").item(0).getTextContent();
					String secretary2 = eElement.getElementsByTagName("SECRETARY2").item(0).getTextContent();
					String assemAddr = eElement.getElementsByTagName("ASSEM_ADDR").item(0).getTextContent();
					String memTitle = eElement.getElementsByTagName("MEM_TITLE").item(0).getTextContent();
//						 
//						
					ProfileMna pmna = new ProfileMna(hgNm, units, sexGbnNm, hjNm, engNm, bthDate, polyNm, origNm,
							electGbnNm, cmits, reeleGbnNm, telNo, email, homepage, staff, secretary, secretary2,
							assemAddr, memTitle);
					list.add(pmna);
				}
			}
//			pageNo++;
//			System.out.println("Page Number : " + pageNo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
