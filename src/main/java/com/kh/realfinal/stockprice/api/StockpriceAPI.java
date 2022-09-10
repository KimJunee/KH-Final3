package com.kh.realfinal.stockprice.api;

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

import com.kh.realfinal.stockprice.model.vo.Stockprice;

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
		int numOfRows = 2645;
		String beginBasDt= "20220901"; //시작날짜 09/01~ 09/07
		String endBasDt= "20220908"; //끝나는 날짜  09/08을 포함하지 않음
		
		while (true) {
			// 1. URL 가공
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
						
						System.out.println(eElement.getElementsByTagName("basDt").item(0).getTextContent());
						System.out.println(eElement.getElementsByTagName("itmsNm").item(0).getTextContent());
						
						String basDt = eElement.getElementsByTagName("basDt").item(0).getTextContent();
						String srtnCd = eElement.getElementsByTagName("srtnCd").item(0).getTextContent();
						String isinCd = eElement.getElementsByTagName("isinCd").item(0).getTextContent();
						String itmsNm = eElement.getElementsByTagName("itmsNm").item(0).getTextContent();
						String mrktCtg = eElement.getElementsByTagName("mrktCtg").item(0).getTextContent();
						String clpr = eElement.getElementsByTagName("clpr").item(0).getTextContent();
						String vs = eElement.getElementsByTagName("vs").item(0).getTextContent();
						String fltRt = eElement.getElementsByTagName("fltRt").item(0).getTextContent();
						String mkp = eElement.getElementsByTagName("mkp").item(0).getTextContent();
						String hipr = eElement.getElementsByTagName("hipr").item(0).getTextContent();
						String lopr = eElement.getElementsByTagName("lopr").item(0).getTextContent();
						String trqu = eElement.getElementsByTagName("trqu").item(0).getTextContent();
						String trPrc = eElement.getElementsByTagName("trPrc").item(0).getTextContent();
						String lstgStCnt = eElement.getElementsByTagName("lstgStCnt").item(0).getTextContent();
						String mrktTotAmt = eElement.getElementsByTagName("mrktTotAmt").item(0).getTextContent();
						
						
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
