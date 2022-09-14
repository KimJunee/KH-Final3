package com.kh.realfinal.publicservice.api;

import java.io.BufferedReader;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.kh.realfinal.publicservice.model.vo.PublicService;


public class PublicServiceAPI {
	
	public static String serviceKey = "DrszgCozJHG41Y9S22XMOKIU5X7mDWkETO%2BR6oUhQNnzdB1Euu7UNEV3XgDLxZoKKgoMS%2FTfkaT%2BgQ8UrteOAA%3D%3D";
	public static String PublicService_JSON_URL = "https://api.odcloud.kr/api/gov24/v1/serviceDetail";

	public static void main(String[] args) {
		PublicServiceAPI.callPublicServiceByJSON();
	}
	
	public static List<PublicService> callPublicServiceByJSON() {
		List<PublicService> list = new ArrayList<>();
		int page = 1;
		int perPage = 100;
		
		while(true) {
			
			System.out.println("pageNumber : " + page);
			StringBuilder urlBuilder = new StringBuilder(PublicService_JSON_URL);
			
			urlBuilder.append("?" + "serviceKey=" + serviceKey);
			urlBuilder.append("&" + "page=" + page);
			urlBuilder.append("&" + "perPage=" + perPage);
			
			try {
				URL url = new URL(urlBuilder.toString());
				System.out.println(url);
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();
				conn.setRequestMethod("GET");
				
				conn.setRequestProperty("Content-type", "application/json");
				
				int code = conn.getResponseCode();
				System.out.println("Response code: " + code);
				if (code < 200 || code >= 300) {
					System.out.println("페이지가 잘못되었습니다.");
					return null;
				}
				
				InputStreamReader isr = new InputStreamReader(conn.getInputStream());
				BufferedReader br = new BufferedReader(isr);
				
				JsonParser jsonParser = new JsonParser();
				JsonObject rootObj = (JsonObject) jsonParser.parse(br);
//				JsonObject childObj = rootObj.getAsJsonObject("data");
				JsonArray publicServiceArray = rootObj.getAsJsonArray("data");
//				System.out.println(publicServiceArray.toString());
				
				for(int i = 0; i < publicServiceArray.size(); i++) {
					JsonObject obj = (JsonObject) publicServiceArray.get(i);
					String serviceId = jsonObjToString(obj, "SVC_ID");
					String serviceName = jsonObjToString(obj, "서비스명");
					String servicePurpose = jsonObjToString(obj, "서비스목적");
					String selecttionCriteria = jsonObjToString(obj, "선정기준");
					String documents = jsonObjToString(obj, "구비서류");
					String organizationName = jsonObjToString(obj, "소관기관명");
					String contactPhone = jsonObjToString(obj, "문의처전화번호");
					String deadline = jsonObjToString(obj, "신청기한");
					String applicationMethod = jsonObjToString(obj, "신청방법");
					String siteUrl = jsonObjToString(obj, "온라인신청사이트URL");	
					String receptionOrgName = jsonObjToString(obj, "접수기관명");
					String supportContent = jsonObjToString(obj, "지원내용");
					String supportTarget = jsonObjToString(obj, "지원대상");
					String supportType = jsonObjToString(obj, "지원유형");
					String statute = jsonObjToString(obj, "법령");
					
					PublicService ps = new PublicService(serviceId, serviceName, servicePurpose, selecttionCriteria, documents, organizationName, contactPhone, deadline, applicationMethod, siteUrl, receptionOrgName, supportContent, supportTarget, supportType, statute);
					list.add(ps);	
					System.out.println(list);
				}
				page++;
				if(page == 4) {
					break;
				}	
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
	
	public static String jsonObjToString(JsonObject obj, String name) {
		try {
			return obj.getAsJsonObject().get(name).getAsString();
		} catch (Exception e) {
			return "-";
		}		
	}

}
