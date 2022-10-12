package com.kh.realfinal.politicsMnaList.api;

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

import com.kh.realfinal.politicsMnaList.model.vo.MnaList;

//국회 국회사무처_의원 정보(사진)
//http://apis.data.go.kr/9710000/NationalAssemblyInfoService/getMemberCurrStateList?
//ServiceKey=tWbk8PS%2BF%2BjjXa2fQXIqiPRWUGRnEAzT%2F8bGnTZ0SWG1V7XoO1VEs4%2Ba5IlbouHxPoF9pGG%2FAgs57DaAjxYU%2BQ%3D%3D	
 

public class MnaListAPI {
	
	public static String key = "=tWbk8PS%2BF%2BjjXa2fQXIqiPRWUGRnEAzT%2F8bGnTZ0SWG1V7XoO1VEs4%2Ba5IlbouHxPoF9pGG%2FAgs57DaAjxYU%2BQ%3D%3D";
	public static String ListMna_XML_URL = "http://apis.data.go.kr/9710000/NationalAssemblyInfoService/getMemberCurrStateList";

	public static void main(String[] args) {
		MnaListAPI.callListMnaByXML();
	}
	
	
	private static List<MnaList> callListMnaByXML() {
		List<MnaList> list = new ArrayList<MnaList>();
		int pageNo = 1;
		int numOfRows = 299;
		
		while (true) {
			
			System.out.println();
			System.out.println("pageNo : " + pageNo);
			StringBuilder urlBuilder = new StringBuilder(ListMna_XML_URL);
			
			urlBuilder.append("?" + "serviceKey" + key);
			urlBuilder.append("&" + "pageNo=" + pageNo);
			urlBuilder.append("&" + "numOfRows" + numOfRows);
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
						
						MnaList lm = new MnaList(mnaName, mnaPhoto);
						list.add(lm);
					}
					
					
				}
			} catch (Exception e) {
				e.printStackTrace();
			
			}
			
		}
		return list;
	}
}
				
				
				
 
	/* Java 1.8 샘플 코드 */
//	    public static void main(String[] args) throws IOException {
//	        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/9710000/NationalAssemblyInfoService/getMemberCurrStateList"); /*URL*/
//	        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=tWbk8PS%2BF%2BjjXa2fQXIqiPRWUGRnEAzT%2F8bGnTZ0SWG1V7XoO1VEs4%2Ba5IlbouHxPoF9pGG%2FAgs57DaAjxYU%2BQ%3D%3D"); /*Service Key*/
//	        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
//	        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지 번호*/
//	        URL url = new URL(urlBuilder.toString());
//	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
//	        conn.setRequestMethod("GET");
//	        conn.setRequestProperty("Content-type", "application/json");
//	        System.out.println("Response code: " + conn.getResponseCode());
//	        BufferedReader rd;
//	        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
//	            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
//	        } else {
//	            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
//	        }
//	        StringBuilder sb = new StringBuilder();
//	        String line;
//	        while ((line = rd.readLine()) != null) {
//	            sb.append(line);
//	        }
//	        rd.close();
//	        conn.disconnect();
//	        System.out.println(sb.toString());
//	    }
	    
//	    public static List<ListMna> callListMnaByXML {
//	    	
//	    	List<ListMna> list = new ArrayList<ListMna>();
//	    	
//	    	
//	    	
//	    }
	    
	    
