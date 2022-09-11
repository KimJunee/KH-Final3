package com.kh.realfinal.exchangerate.api;

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

import com.kh.realfinal.exchangerate.model.vo.ExchangeRate;

public class ExchangeRateAPI {
	
	public static String key = "PCNxso2TMGeSrjPMsBxvOscmyUmaYllFFoSb%2BN%2BjMnDf4gSitSdIZjC3290UCja4ki92iGwbCXZv6utvCT0IAg%3D%3D";
	public static String ExchangeRate_XML_URL = "http://api.odcloud.kr/api/15105540/v1/uddi:759b90cf-dbcb-4a1e-a269-be8faeb0c380";
	
	
	public static void main(String[] args) {
		System.out.println(ExchangeRateAPI.callExchangeRateByXML());
		
	}
	
	
	
	public static List<ExchangeRate> callExchangeRateByXML(){
		List<ExchangeRate> list = new ArrayList<ExchangeRate>();
//	?page=1
//	&perPage=2000
//	&returnType=XML
//	&serviceKey=PCNxso2TMGeSrjPMsBxvOscmyUmaYllFFoSb%2BN%2BjMnDf4gSitSdIZjC3290UCja4ki92iGwbCXZv6utvCT0IAg%3D%3D
		int pageNo = 1;
		int perPage = 2000;
		String returnType = "XML";
		while(true) {
			System.out.println();
			System.out.println("pageNumber : " + pageNo);
			StringBuilder urlBuilder = new StringBuilder(ExchangeRate_XML_URL);
			
			urlBuilder.append("?" + "pageNo=" + pageNo);
			urlBuilder.append("&" + "perPage=" + perPage);
			urlBuilder.append("&" + "returnType=" + returnType);
			urlBuilder.append("&" + "serviceKey=" + key);
			
			System.out.println(urlBuilder);
			
	try {
				
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
				
			
				DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
				DocumentBuilder db = dbf.newDocumentBuilder();
				Document doc = db.parse(conn.getInputStream());
				doc.getDocumentElement().normalize();
				
				System.out.println("Root Element : " + doc.getDocumentElement().getNodeName()); 
				System.out.println("=======================" + pageNo + "페이지 시작==============================");
				
				NodeList nList = doc.getElementsByTagName("item");
		
				System.out.println("nList.getLength() : "+nList.getLength());
				if(nList.getLength() < 1) {
					break;
				}
				for (int j = 0; j < nList.getLength(); j++) {
					Node node = nList.item(j);
//					System.out.println("\nCurrent Element : " + node.getNodeName());
 
					if (node.getNodeType() == Node.ELEMENT_NODE) {
						Element eElement = (Element) node;
						String theDate="";
						if(eElement.getElementsByTagName("col").item(0).getTextContent().length() == 10) {
							theDate = eElement.getElementsByTagName("col").item(0).getTextContent();
						}
						Double dollar= 0.00;
						if(eElement.getElementsByTagName("col").item(0).getTextContent().length() == 7) {
							dollar = Double.parseDouble(eElement.getElementsByTagName("col").item(0).getTextContent());
						}
						Double yuan= 0.00;
						if(eElement.getElementsByTagName("col").item(0).getTextContent().length() == 6) {
							yuan = Double.parseDouble(eElement.getElementsByTagName("col").item(0).getTextContent());
						}
						
						if(eElement.getElementsByTagName("col").item(1).getTextContent().length() == 10) {
							theDate = eElement.getElementsByTagName("col").item(1).getTextContent();
						}
						if(eElement.getElementsByTagName("col").item(1).getTextContent().length() == 7) {
							dollar = Double.parseDouble(eElement.getElementsByTagName("col").item(1).getTextContent());
						}
						if(eElement.getElementsByTagName("col").item(1).getTextContent().length() == 6) {
							yuan = Double.parseDouble(eElement.getElementsByTagName("col").item(1).getTextContent());
						}
						if(eElement.getElementsByTagName("col").item(2).getTextContent().length() == 10) {
							theDate = eElement.getElementsByTagName("col").item(2).getTextContent();
						}
						if(eElement.getElementsByTagName("col").item(2).getTextContent().length() == 7) {
							dollar = Double.parseDouble(eElement.getElementsByTagName("col").item(2).getTextContent());
						}
						if(eElement.getElementsByTagName("col").item(2).getTextContent().length() == 6) {
							yuan = Double.parseDouble(eElement.getElementsByTagName("col").item(2).getTextContent());
						}
						
//						System.out.println("달러(원) : "  + eElement.getElementsByTagName("col").item(0).getTextContent());
//						System.out.println("위안(원) : "  + eElement.getElementsByTagName("col").item(1).getTextContent());
//						System.out.println("일자(년월일) : "  + eElement.getElementsByTagName("col").item(2).getTextContent());
//						System.out.println("---------------------------------------------------------");
//						String dollar = eElement.getElementsByTagName("col").item(0).getTextContent();
//						String yuan = eElement.getElementsByTagName("col").item(1).getTextContent();
//						String date = eElement.getElementsByTagName("col").item(2).getTextContent();
						
					
						ExchangeRate er = new ExchangeRate(dollar, yuan ,theDate);
					list.add(er);
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
