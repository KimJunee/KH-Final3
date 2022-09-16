package com.kh.realfinal.indexprice.api;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;


import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.kh.realfinal.indexprice.model.vo.IndexPrice;

public class IndexPriceAPI {
	
	public static String key = "PCNxso2TMGeSrjPMsBxvOscmyUmaYllFFoSb%2BN%2BjMnDf4gSitSdIZjC3290UCja4ki92iGwbCXZv6utvCT0IAg%3D%3D";
	public static String IndexPrice_JSON_URL = "http://apis.data.go.kr/1160100/service/GetMarketIndexInfoService/getStockMarketIndex";

	
	public static void main(String[] args) {
		System.out.println(IndexPriceAPI.callIndexPriceByJSON());
	}
	
	
	public static List<IndexPrice> callIndexPriceByJSON(){
		List<IndexPrice> list = new ArrayList<IndexPrice>();
		//?serviceKey=PCNxso2TMGeSrjPMsBxvOscmyUmaYllFFoSb%2BN%2BjMnDf4gSitSdIZjC3290UCja4ki92iGwbCXZv6utvCT0IAg%3D%3D
		//&resultType=json
		//&pageNo=1
		//&numOfRows=2000
		//&idxNm=코스피
		String resultType = "json";
		int pageNo = 1;
		int numOfRows = 2000;
		String idxNm1 = "코스피";
//		String idxNm2 = "코스닥";
		
		while(true) {
			try {
				StringBuilder urlBuilder = new StringBuilder(IndexPrice_JSON_URL);
				
				urlBuilder.append("?" + "serviceKey=" + key);
				urlBuilder.append("&" + "resultType=" + resultType);
				urlBuilder.append("&" + "pageNo=" + pageNo);
				urlBuilder.append("&" + "numOfRows=" + numOfRows);
				urlBuilder.append("&" + "idxNm=" + idxNm1);
//				urlBuilder.append("&" + "idxNm=" + idxNm2);
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
				System.out.println("br.readline = " + br.readLine());
//				System.out.println("br.toString = " + br.toString());
//				System.out.println("br.getClass = " + br.getClass());
//				System.out.println("br.read = " + br.read());
//				System.out.println("br.lines = " + br.lines());

				
				
				JSONParser jsonParser = new JSONParser();
				JSONObject rootObj = (JSONObject) jsonParser.parse(br);
				JSONObject childObj = (JSONObject) rootObj.get("response");
				JSONArray indexpriceArray = (JSONArray)childObj.get("item");
				
				for(int i = 0; i < indexpriceArray.size(); i++) {
					JSONObject obj = (JSONObject)indexpriceArray.get(i);
					
					String basDt           = (String) obj.get("basDt");         
					String idxNm           = (String) obj.get("idxNm");           
					String idxCsf          = (String) obj.get("idxCsf");          
					Double clpr            = (Double) obj.get("clpr");          
					Double vs              = (Double) obj.get("vs");            
					Double fltRt           = (Double) obj.get("fltRt");        
					Double mkp             = (Double) obj.get("mkp");           
					Double hipr            = (Double) obj.get("hipr");          
					Double lopr            = (Double) obj.get("lopr");          
					Long   trqu            = (Long) obj.get("trqu");          
					Long   trPrc           = (Long) obj.get("trPrc");       
					Long   lstgMrktTotAmt  = (Long) obj.get("lstgMrktTotAmt"); 
					Double lsYrEdVsFltRg   = (Double) obj.get("lsYrEdVsFltRg"); 
					Double lsYrEdVsFltRt   = (Double) obj.get("lsYrEdVsFltRt"); 
					Double yrWRcrdHgst     = (Double) obj.get("yrWRcrdHgst");    
					String yrWRcrdHgstDt   = (String) obj.get("yrWRcrdHgstDt");  
					Double yrWRcrdLwst     = (Double) obj.get("yrWRcrdLwst");   
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
