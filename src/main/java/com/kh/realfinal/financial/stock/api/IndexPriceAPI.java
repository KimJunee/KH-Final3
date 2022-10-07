package com.kh.realfinal.financial.stock.api;

import java.io.BufferedReader;

import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.kh.realfinal.indexprice.model.vo.IndexPrice;

public class IndexPriceAPI {
	
	public static String key = "PCNxso2TMGeSrjPMsBxvOscmyUmaYllFFoSb%2BN%2BjMnDf4gSitSdIZjC3290UCja4ki92iGwbCXZv6utvCT0IAg%3D%3D";
//	public static String key = "PCNxso2TMGeSrjPMsBxvOscmyUmaYllFFoSb+N+jMnDf4gSitSdIZjC3290UCja4ki92iGwbCXZv6utvCT0IAg==";
	public static String IndexPrice_JSON_URL = "http://apis.data.go.kr/1160100/service/GetMarketIndexInfoService/getStockMarketIndex";
	public static String IndexPrice_XML_URL = "http://apis.data.go.kr/1160100/service/GetMarketIndexInfoService/getStockMarketIndex";
//	public static String IndexPrice_XML_URL = "http://apis.data.go.kr/1160100/service/GetMarketIndexInfoService";

	
	public static void main(String[] args) throws UnsupportedEncodingException {
//		System.out.println(IndexPriceAPI.callIndexPriceByXML());
		System.out.println(IndexPriceAPI.callIndexPriceByJSON());
	}
	
	public static List<IndexPrice> callIndexPriceByXML1() throws UnsupportedEncodingException{
		List<IndexPrice> list = new ArrayList<IndexPrice>();
		//?serviceKey=PCNxso2TMGeSrjPMsBxvOscmyUmaYllFFoSb%2BN%2BjMnDf4gSitSdIZjC3290UCja4ki92iGwbCXZv6utvCT0IAg%3D%3D
		//&resultType=json
		//&pageNo=1
		//&numOfRows=2000
//		&idxNm=코스피
//		String resultType = "json";
		int pageNo = 1;
		int numOfRows = 2000;
		String idxNm1 = "코스피";
		String idxNmURL = URLEncoder.encode(idxNm1, "UTF-8");
//		String idxNm2 = "코스닥";
//		String idxNmURL = URLEncoder.encode(idxNm2, "UTF-8");
		while (true) {
			System.out.println();
//			System.out.println("pageNumber : " + pageNo);
			StringBuilder urlBuilder = new StringBuilder(IndexPrice_XML_URL);
			urlBuilder.append("?" + "serviceKey=" + key);
//			urlBuilder.append("&" + "resultType=" + resultType);
//			urlBuilder.append("&" + "pageNo=" + pageNo);
			urlBuilder.append("&" + "numOfRows=" + numOfRows);
			urlBuilder.append("&" + "idxNm=" + idxNmURL);
//			urlBuilder.append("&" + "idxNm=" + idxNm2);
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
				System.out.println("=======================" + pageNo + "페이지시작=========================");
				
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
						System.out.println(eElement.getElementsByTagName("basDt").item(0).getTextContent());
						System.out.println(eElement.getElementsByTagName("idxNm").item(0).getTextContent());
						
						String basDt = eElement.getElementsByTagName("basDt").item(0).getTextContent();
						String idxNm = eElement.getElementsByTagName("idxNm").item(0).getTextContent();
						String idxCsf = eElement.getElementsByTagName("idxCsf").item(0).getTextContent();
						Double clpr  = Double.parseDouble(eElement.getElementsByTagName("clpr").item(0).getTextContent());       
						Double vs  = Double.parseDouble(eElement.getElementsByTagName("vs").item(0).getTextContent());           
						Double fltRt  = Double.parseDouble(eElement.getElementsByTagName("fltRt").item(0).getTextContent());        
						Double mkp   = Double.parseDouble(eElement.getElementsByTagName("mkp").item(0).getTextContent());         
						Double hipr  = Double.parseDouble(eElement.getElementsByTagName("hipr").item(0).getTextContent());         
						Double lopr  = Double.parseDouble(eElement.getElementsByTagName("lopr").item(0).getTextContent());         
						Long trqu  = Long.parseLong(eElement.getElementsByTagName("trqu").item(0).getTextContent());         
						Long   trPrc  = Long.parseLong(eElement.getElementsByTagName("trPrc").item(0).getTextContent());        
						Long   lstgMrktTotAmt = Long.parseLong(eElement.getElementsByTagName("lstgMrktTotAmt").item(0).getTextContent());
						Double lsYrEdVsFltRg  = Double.parseDouble(eElement.getElementsByTagName("lsYrEdVsFltRg").item(0).getTextContent());
						Double lsYrEdVsFltRt  = Double.parseDouble(eElement.getElementsByTagName("lsYrEdVsFltRt").item(0).getTextContent());
						Double yrWRcrdHgst   = Double.parseDouble(eElement.getElementsByTagName("yrWRcrdHgst").item(0).getTextContent()); 
						String yrWRcrdHgstDt  = eElement.getElementsByTagName("yrWRcrdHgstDt").item(0).getTextContent();
						Double yrWRcrdLwst   = Double.parseDouble(eElement.getElementsByTagName("yrWRcrdLwst").item(0).getTextContent()); 
						String yrWRcrdLwstDt  = eElement.getElementsByTagName("yrWRcrdLwstDt").item(0).getTextContent();
	
					IndexPrice ip = new IndexPrice(basDt, idxNm, idxCsf, clpr, vs, fltRt, mkp, hipr, lopr, trqu 
							, trPrc, lstgMrktTotAmt, lsYrEdVsFltRg, lsYrEdVsFltRt, yrWRcrdHgst, yrWRcrdHgstDt, 
							yrWRcrdLwst, yrWRcrdLwstDt);
					list.add(ip);	
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
	
	public static List<IndexPrice> callIndexPriceByXML2() throws UnsupportedEncodingException{
		List<IndexPrice> list = new ArrayList<IndexPrice>();
		//?serviceKey=PCNxso2TMGeSrjPMsBxvOscmyUmaYllFFoSb%2BN%2BjMnDf4gSitSdIZjC3290UCja4ki92iGwbCXZv6utvCT0IAg%3D%3D
		//&resultType=json
		//&pageNo=1
		//&numOfRows=2000
//		&idxNm=코스피
//		String resultType = "json";
		int pageNo = 1;
		int numOfRows = 2000;
//		String idxNm1 = "코스피";
//		String idxNmURL = URLEncoder.encode(idxNm1, "UTF-8");
		String idxNm2 = "코스닥";
		String idxNmURL = URLEncoder.encode(idxNm2, "UTF-8");
		while (true) {
			System.out.println();
//			System.out.println("pageNumber : " + pageNo);
			StringBuilder urlBuilder = new StringBuilder(IndexPrice_XML_URL);
			urlBuilder.append("?" + "serviceKey=" + key);
//			urlBuilder.append("&" + "resultType=" + resultType);
//			urlBuilder.append("&" + "pageNo=" + pageNo);
			urlBuilder.append("&" + "numOfRows=" + numOfRows);
			urlBuilder.append("&" + "idxNm=" + idxNmURL);
//			urlBuilder.append("&" + "idxNm=" + idxNm2);
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
				System.out.println("=======================" + pageNo + "페이지시작=========================");
				
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
						System.out.println(eElement.getElementsByTagName("basDt").item(0).getTextContent());
						System.out.println(eElement.getElementsByTagName("idxNm").item(0).getTextContent());
						
						String basDt = eElement.getElementsByTagName("basDt").item(0).getTextContent();
						String idxNm = eElement.getElementsByTagName("idxNm").item(0).getTextContent();
						String idxCsf = eElement.getElementsByTagName("idxCsf").item(0).getTextContent();
						Double clpr  = Double.parseDouble(eElement.getElementsByTagName("clpr").item(0).getTextContent());       
						Double vs  = Double.parseDouble(eElement.getElementsByTagName("vs").item(0).getTextContent());           
						Double fltRt  = Double.parseDouble(eElement.getElementsByTagName("fltRt").item(0).getTextContent());        
						Double mkp   = Double.parseDouble(eElement.getElementsByTagName("mkp").item(0).getTextContent());         
						Double hipr  = Double.parseDouble(eElement.getElementsByTagName("hipr").item(0).getTextContent());         
						Double lopr  = Double.parseDouble(eElement.getElementsByTagName("lopr").item(0).getTextContent());         
						Long trqu  = Long.parseLong(eElement.getElementsByTagName("trqu").item(0).getTextContent());         
						Long   trPrc  = Long.parseLong(eElement.getElementsByTagName("trPrc").item(0).getTextContent());        
						Long   lstgMrktTotAmt = Long.parseLong(eElement.getElementsByTagName("lstgMrktTotAmt").item(0).getTextContent());
						Double lsYrEdVsFltRg  = Double.parseDouble(eElement.getElementsByTagName("lsYrEdVsFltRg").item(0).getTextContent());
						Double lsYrEdVsFltRt  = Double.parseDouble(eElement.getElementsByTagName("lsYrEdVsFltRt").item(0).getTextContent());
						Double yrWRcrdHgst   = Double.parseDouble(eElement.getElementsByTagName("yrWRcrdHgst").item(0).getTextContent()); 
						String yrWRcrdHgstDt  = eElement.getElementsByTagName("yrWRcrdHgstDt").item(0).getTextContent();
						Double yrWRcrdLwst   = Double.parseDouble(eElement.getElementsByTagName("yrWRcrdLwst").item(0).getTextContent()); 
						String yrWRcrdLwstDt  = eElement.getElementsByTagName("yrWRcrdLwstDt").item(0).getTextContent();
	
					IndexPrice ip = new IndexPrice(basDt, idxNm, idxCsf, clpr, vs, fltRt, mkp, hipr, lopr, trqu 
							, trPrc, lstgMrktTotAmt, lsYrEdVsFltRg, lsYrEdVsFltRt, yrWRcrdHgst, yrWRcrdHgstDt, 
							yrWRcrdLwst, yrWRcrdLwstDt);
					list.add(ip);	
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
	
	
	
	
	

	
	public static List<IndexPrice> callIndexPriceByJSON() throws UnsupportedEncodingException{
		List<IndexPrice> list = new ArrayList<IndexPrice>();
		//?serviceKey=PCNxso2TMGeSrjPMsBxvOscmyUmaYllFFoSb%2BN%2BjMnDf4gSitSdIZjC3290UCja4ki92iGwbCXZv6utvCT0IAg%3D%3D
		//&resultType=json
		//&pageNo=1
		//&numOfRows=2000
		//&idxNm=코스피
		String resultType = "json";
		int pageNo = 1;
		int numOfRows = 2000;
//		String idxNm1 = "코스피";
		String idxNm2 = "코스닥";
		String idxNmURL = URLEncoder.encode(idxNm2, "UTF-8");
		
		while(true) {
			try {
				StringBuilder urlBuilder = new StringBuilder(IndexPrice_JSON_URL);
				
				urlBuilder.append("?" + "serviceKey=" + key);
				urlBuilder.append("&" + "resultType=" + resultType);
				urlBuilder.append("&" + "pageNo=" + pageNo);
				urlBuilder.append("&" + "numOfRows=" + numOfRows);
//				urlBuilder.append("&" + "idxNm=" + idxNm1);
				urlBuilder.append("&" + "idxNm=" + idxNmURL);
				System.out.println(urlBuilder);
				
				URL url = new URL(urlBuilder.toString());
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();
				conn.setRequestMethod("GET");
				
				conn.setRequestProperty("Accept", "application/json");
				int code = conn.getResponseCode();
				System.out.println("ResponseCode : " + code);
				
				if(code < 200 || code >= 300) {
					System.out.println("페이지가 잘못되었습니다.");
					return null;
				}
				
				
				
				InputStreamReader isr = new InputStreamReader(conn.getInputStream(),"UTF-8");
//				System.out.println("isr.read = " + isr);
				BufferedReader br = new BufferedReader(isr);
//				System.out.println("br.readline = " + br.readLine());
//				System.out.println("br.toString = " + br.toString());
//				System.out.println("br.getClass = " + br.getClass());
//				System.out.println("br.read = " + br.read());
//				System.out.println("br.lines = " + br.lines());

				
				
				JSONParser jsonParser = new JSONParser();
				JSONObject rootObj = (JSONObject) jsonParser.parse(br);
				JSONObject childObj1 = (JSONObject) rootObj.get("response");
				JSONObject childObj2 = (JSONObject) childObj1.get("body");
				JSONObject childObj3 = (JSONObject) childObj2.get("items");
				JSONArray indexpriceArray = (JSONArray)childObj3.get("item");
				if(indexpriceArray == null) {
					System.out.println("안에 뭐가 없는데??");
					continue;
				}else {
					System.out.println("안에 뭐가 있따!!");
				}
				
				for(int i = 0; i < indexpriceArray.size(); i++) {
					JSONObject obj = (JSONObject)indexpriceArray.get(i);
					
					String basDt           = (String) obj.get("basDt");         
					String idxNm           = (String) obj.get("idxNm");           
					String idxCsf          = (String) obj.get("idxCsf");          
					Double clpr            = Double.valueOf((String) obj.get("clpr"));          
					Double vs              = Double.valueOf((String) obj.get("vs"));            
					Double fltRt           = Double.valueOf((String) obj.get("fltRt"));        
					Double mkp             = Double.valueOf((String) obj.get("mkp"));           
					Double hipr            = Double.valueOf((String) obj.get("hipr"));          
					Double lopr            = Double.valueOf((String) obj.get("lopr"));          
					Long trqu              = Long.valueOf((String) obj.get("trqu"));          
					Long   trPrc           = Long.valueOf((String) obj.get("trPrc"));       
					Long   lstgMrktTotAmt  = Long.valueOf((String) obj.get("lstgMrktTotAmt")); 
					Double lsYrEdVsFltRg   = Double.valueOf((String) obj.get("lsYrEdVsFltRg")); 
					Double lsYrEdVsFltRt   = Double.valueOf((String) obj.get("lsYrEdVsFltRt")); 
					Double yrWRcrdHgst     = Double.valueOf((String) obj.get("yrWRcrdHgst"));    
					String yrWRcrdHgstDt   = (String) obj.get("yrWRcrdHgstDt");  
					Double yrWRcrdLwst     = Double.valueOf((String) obj.get("yrWRcrdLwst"));   
					String yrWRcrdLwstDt   = (String) obj.get("yrWRcrdLwstDt");  
					
					IndexPrice ip = new IndexPrice(basDt, idxNm, idxCsf, clpr, vs, fltRt, mkp, hipr, lopr, trqu 
							, trPrc, lstgMrktTotAmt, lsYrEdVsFltRg, lsYrEdVsFltRt, yrWRcrdHgst, yrWRcrdHgstDt, 
							yrWRcrdLwst, yrWRcrdLwstDt);
					list.add(ip);					
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
