package com.kh.realfinal.opinion.api;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.kh.realfinal.opinion.model.vo.Opinion;

public class OpinionRss {
	public static final String OPINION_XML_URL  = "https://www.korea.kr/rss/gigo_column.xml";
	
	public static void main(String[] args) {
		OpinionRss.callOpinionListByXML();
	}
	
	public static List<Opinion> callOpinionListByXML(){
		List<Opinion> list = new ArrayList<>();
		
		StringBuffer urlBuffer = new StringBuffer();
		urlBuffer.append(OPINION_XML_URL);
		
		System.out.println(urlBuffer);
		

		try {
			URL url = new URL(urlBuffer.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", "application/xml");
			int code = conn.getResponseCode(); // 실제 호출하는 부
			System.out.println("ResponseCode : " + code);
			
			if(code < 200 || code > 300) {
				System.out.println("페이지가 잘못되었습니다.");
				return null;
			}
			
			// 3. 페이지 Parsing(해석)
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			 
			Document doc = db.parse(conn.getInputStream()); // xml 부를 파싱하여 객체화
			
			doc.getDocumentElement().normalize();
			
			System.out.println("Root Element : " + doc.getDocumentElement().getNodeName());
			System.out.println("======================================================");

			NodeList nList = doc.getElementsByTagName("item");
			
			for(int i = 0; i < nList.getLength(); i++) {
				Node node = nList.item(i);
				if(node.getNodeType() == Node.ELEMENT_NODE) {
					try {
						Element eElement = (Element) node;
						
						String title = getStrData(eElement,"title");
						String link = getStrData(eElement,"link");
						String descriptionOrigin = getStrData(eElement,"description");
						Date pubDate = getDateData(eElement,"pubDate");
						
						int value = 0;
						int nextValue = 0;
						String pattern =  "";
						pattern = "src=\"";
						value = descriptionOrigin.indexOf(pattern, nextValue);
						nextValue = descriptionOrigin.indexOf("\"", value + pattern.length());
						String imageUrl = descriptionOrigin.substring(value, nextValue).replace("src=\"", "");
						
						String pattern1 =  "";
						int value1 = 0;
						int nextValue1 = 0;
						pattern1 = "alt=\"";
						value1 = descriptionOrigin.indexOf(pattern1, nextValue1);
						nextValue1 = descriptionOrigin.indexOf("\"", value1 + pattern1.length());
						if(descriptionOrigin.substring(value1, nextValue1).replace("alt=\"", "") == null) {
							continue;
						}
						String columnist = descriptionOrigin.substring(value1, nextValue1).replace("alt=\"", "");
						
						String content = "";
						if(descriptionOrigin.indexOf("</table>") > 0) {
							content = descriptionOrigin.substring(descriptionOrigin.indexOf("</table>")).replace("</table>", "");
						}else {
							content = descriptionOrigin;
						}
						
						
						// https://codechacha.com/ko/java-string-matches/

						Opinion opinion = new Opinion(i, title, link, imageUrl, columnist, content, pubDate, 0, 0);
						list.add(opinion);
//						System.out.println(opinion.getTitle());
//						System.out.println(opinion.getDescriptionOrigin()); 
//						System.out.println(opinion.getImageUrl());
//						System.out.println(opinion.getWriterName());
//						System.out.println(opinion.getContent());
						System.out.println(list.toString());
						System.out.println("----------------------------------------------------");
					} catch (Exception e){
						System.out.println("데이터가 잘못되었습니다!");
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;		
	}
	
	private static String getStrData(Element eElement, String tagName){
		try {
			return eElement.getElementsByTagName(tagName).item(0).getTextContent();
		} catch (Exception e) {
			return "-";
		}
	}
	
	private static int getIntData(Element eElement, String tagName){
		try {
			return Integer.parseInt(eElement.getElementsByTagName(tagName).item(0).getTextContent());
		} catch (Exception e) {
			return 0;
		}
	}
	
	private static long getLogData(Element eElement, String tagName){
		try {
			return Long.parseLong(eElement.getElementsByTagName(tagName).item(0).getTextContent());
		} catch (Exception e) {
			return 0;
		}
	}
	
	private static double getDoubleData(Element eElement, String tagName){
		try {
			return Double.parseDouble(eElement.getElementsByTagName(tagName).item(0).getTextContent());
		} catch (Exception e) {
			return 0.0;
		}
	}
	
	private static Date getDateData(Element eElement, String tagName){
		try {
			Date date = new Date(eElement.getElementsByTagName(tagName).item(0).getTextContent());
			return date;
		} catch (Exception e) {
			return null;
		}
	}

}
