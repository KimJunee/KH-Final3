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

import com.kh.realfinal.politics.model.vo.MnaPhoto;

//국회 국회사무처_의원 정보(국회의원 프로필 사진)

public class MnaPhotoAPI {
	
	public static String key = "tWbk8PS%2BF%2BjjXa2fQXIqiPRWUGRnEAzT%2F8bGnTZ0SWG1V7XoO1VEs4%2Ba5IlbouHxPoF9pGG%2FAgs57DaAjxYU%2BQ%3D%3D";
	public static String ListMna_XML_URL = "http://apis.data.go.kr/9710000/NationalAssemblyInfoService/getMemberCurrStateList";

	public static void main(String[] args) {
		List<MnaPhoto> list = MnaPhotoAPI.callListMnaByXML();
//		for(MnaPhoto photo : list) {
//			if(photo.getMnaName().equals("배현진")) {
//				System.out.println("===========================");
//				System.out.println("배현진을 찾았습니다!!");
//				System.out.println(photo);
//			}
//		}
	}
	
	
	public static List<MnaPhoto> callListMnaByXML() {
		List<MnaPhoto> list = new ArrayList<MnaPhoto>();
		int pageNo = 1;
		int numOfRows = 500;
		
		while (true) {
			
			System.out.println();
			System.out.println("pageNo : " + pageNo);
			StringBuilder urlBuilder = new StringBuilder(ListMna_XML_URL);
			
			urlBuilder.append("?" + "ServiceKey=" + key);
			urlBuilder.append("&" + "numOfRows=" + numOfRows);
//			urlBuilder.append("&" + "pageNo=" + pageNo);
			System.out.println(urlBuilder);
			
			try {
				URL url = new URL(urlBuilder.toString());
				HttpURLConnection conn = (HttpURLConnection)url.openConnection();
				conn.setRequestMethod("GET");
				conn.setRequestProperty("Accept", "application/xml");
				
				int code = conn.getResponseCode();
				System.out.println("Response code: " + code);
				if(code < 200 || code >= 300) {
					System.out.println("페이지가 잘못되었습니다.");
					return null;
				}
				
				DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
				DocumentBuilder db = dbf.newDocumentBuilder();
				Document doc = db.parse(conn.getInputStream());
				doc.getDocumentElement().normalize();
				
				System.out.println("Root Element : " + doc.getDocumentElement().getNodeName());
				System.out.println("=======================" + pageNo + "페이지 시작==============================");
				
				NodeList nList = doc.getElementsByTagName("item");
				System.out.println("nList.getLength : " + nList.getLength());
				if(nList.getLength() < 1) {
					break;  
				}
				for(int j = 0; j < nList.getLength(); j++) {
					Node node = nList.item(j);
//					System.out.println("\nCurrent Element : " + node.getNodeName());
					
					if (node.getNodeType() == Node.ELEMENT_NODE) {
						Element eElement = (Element) node;
						System.out.println("mnaName : " + eElement.getElementsByTagName("empNm").item(0).getTextContent());
						System.out.println("mnaPhoto : " + eElement.getElementsByTagName("jpgLink").item(0).getTextContent());
						
						String mnaName = eElement.getElementsByTagName("empNm").item(0).getTextContent();
						String mnaPhoto = eElement.getElementsByTagName("jpgLink").item(0).getTextContent();
						
//						String mnaPhoto = "";
						if(eElement.getElementsByTagName("jpgLink").item(0) != null) {
							mnaPhoto = eElement.getElementsByTagName("jpgLink").item(0).getTextContent();
						}
						
						MnaPhoto lm = new MnaPhoto(mnaName, mnaPhoto);
						list.add(lm);
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
				