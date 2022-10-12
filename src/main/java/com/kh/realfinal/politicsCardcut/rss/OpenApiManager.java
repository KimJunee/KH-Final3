package com.kh.realfinal.politicsCardcut.rss;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.NodeList;

import com.kh.realfinal.politicsCardcut.model.vo.CardCutVO;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class OpenApiManager {
	public static final String WEEKLY_XML_URL  = "https://www.korea.kr/rss/visual.xml";
	
		public static List<CardCutVO> callWeeklyNewsListByXML() {
			List<CardCutVO> list = new ArrayList<>();
			
			StringBuffer urlBuffer = new StringBuffer();
			urlBuffer.append(WEEKLY_XML_URL);
			
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
							
							// https://codechacha.com/ko/java-string-matches/
							int value = 0;
							int nextValue = 0;
							String pattern = "src=\"";
							List<String> imageList = new ArrayList<String>();
							while((value = descriptionOrigin.indexOf(pattern, nextValue)) > 0) {
								nextValue = descriptionOrigin.indexOf("\"", value + pattern.length());
								String imageurl = descriptionOrigin.substring(value, nextValue).replace("src=\"", "");
								imageList.add(imageurl);
								value = nextValue + 1;
							}
							String description = descriptionOrigin.substring(descriptionOrigin.indexOf("<!--cardnewsEnd-->")).replace("<!--cardnewsEnd-->", "");
							CardCutVO card = new CardCutVO(title, link, descriptionOrigin, imageList, description, pubDate);
							list.add(card);
//							System.out.println(card.getDescriptionOrigin()); 
//							System.out.println(card.getImages()); 
							System.out.println(card.getContent()); 
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
		
		public static void main(String[] args) {
			OpenApiManager.callWeeklyNewsListByXML();
		}
}
