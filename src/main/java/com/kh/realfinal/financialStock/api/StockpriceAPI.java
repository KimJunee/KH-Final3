package com.kh.realfinal.financialStock.api;

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

import com.kh.realfinal.financialStock.model.vo.Stockprice;

public class StockpriceAPI {
	
	public static String key = "PCNxso2TMGeSrjPMsBxvOscmyUmaYllFFoSb%2BN%2BjMnDf4gSitSdIZjC3290UCja4ki92iGwbCXZv6utvCT0IAg%3D%3D";
	
	public static String Stockprice_XML_URL = "http://apis.data.go.kr/1160100/service/GetStockSecuritiesInfoService/getStockPriceInfo";

	public static void main(String[] args) {
		StockpriceAPI.callStockpriceByXML();
	}

	
	public static List<Stockprice> callStockpriceByXML() {
		List<Stockprice> list = new ArrayList<Stockprice>();
		//&numOfRows=2645&pageNo=5&beginBasDt=20220901&endBasDt=20220908
		int pageNo = 1;
		int numOfRows = 3000;
		String beginBasDt= "20221001"; //시작일자 09/01~ 09/07
		String endBasDt= "20221014"; //끝나는 일자  09/01~09/07 9월8일은 포함안함
		
		while (true) {
			System.out.println();
			System.out.println("pageNumber : " + pageNo);
			StringBuilder urlBuilder = new StringBuilder(Stockprice_XML_URL);
		
			urlBuilder.append("?" + "serviceKey=" + key);
			urlBuilder.append("&" + "numOfRows=" + numOfRows);
			urlBuilder.append("&" + "pageNo=" + pageNo);
			urlBuilder.append("&" + "beginBasDt=" + beginBasDt);
			urlBuilder.append("&" + "endBasDt=" + endBasDt);
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
						System.out.println(eElement.getElementsByTagName("itmsNm").item(0).getTextContent());
						
						String basDt = eElement.getElementsByTagName("basDt").item(0).getTextContent();
						String srtnCd = eElement.getElementsByTagName("srtnCd").item(0).getTextContent();
						String isinCd = eElement.getElementsByTagName("isinCd").item(0).getTextContent();
						String itmsNm = eElement.getElementsByTagName("itmsNm").item(0).getTextContent();
						String mrktCtg = eElement.getElementsByTagName("mrktCtg").item(0).getTextContent();
						int clpr = Integer.parseInt(eElement.getElementsByTagName("clpr").item(0).getTextContent());
						int vs = Integer.parseInt(eElement.getElementsByTagName("vs").item(0).getTextContent());
						float fltRt =  Float.parseFloat(eElement.getElementsByTagName("fltRt").item(0).getTextContent());
						int mkp = Integer.parseInt(eElement.getElementsByTagName("mkp").item(0).getTextContent());
						int hipr = Integer.parseInt(eElement.getElementsByTagName("hipr").item(0).getTextContent());
						int lopr = Integer.parseInt(eElement.getElementsByTagName("lopr").item(0).getTextContent());
						int trqu = Integer.parseInt(eElement.getElementsByTagName("trqu").item(0).getTextContent());
						Double trPrc = Double.parseDouble(eElement.getElementsByTagName("trPrc").item(0).getTextContent());
						Double lstgStCnt = Double.parseDouble(eElement.getElementsByTagName("lstgStCnt").item(0).getTextContent());
						Double mrktTotAmt = Double.parseDouble(eElement.getElementsByTagName("mrktTotAmt").item(0).getTextContent());
						
						
						Stockprice sp = new Stockprice(basDt, srtnCd ,isinCd ,itmsNm ,mrktCtg ,clpr ,vs ,fltRt ,mkp      
						,hipr ,lopr ,trqu ,trPrc ,lstgStCnt,mrktTotAmt);
					list.add(sp);
					}
				}
				pageNo++;
				if(pageNo == 6) {
					break;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}

}
