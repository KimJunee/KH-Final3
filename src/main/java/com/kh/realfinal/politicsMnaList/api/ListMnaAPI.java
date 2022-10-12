package com.kh.realfinal.politicsMnaList.api;


import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.io.BufferedReader;
import java.io.IOException;

public class ListMnaAPI {
	
//	국회 국회사무처_의원 정보(사진)
//	http://apis.data.go.kr/9710000/NationalAssemblyInfoService/getMemberCurrStateList?
//	ServiceKey=tWbk8PS%2BF%2BjjXa2fQXIqiPRWUGRnEAzT%2F8bGnTZ0SWG1V7XoO1VEs4%2Ba5IlbouHxPoF9pGG%2FAgs57DaAjxYU%2BQ%3D%3D	
	 
	/* Java 1.8 샘플 코드 */
	    public static void main(String[] args) throws IOException {
	        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/9710000/NationalAssemblyInfoService/getMemberCurrStateList"); /*URL*/
	        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=서비스키"); /*Service Key*/
	        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
	        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지 번호*/
	        URL url = new URL(urlBuilder.toString());
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("GET");
	        conn.setRequestProperty("Content-type", "application/json");
	        System.out.println("Response code: " + conn.getResponseCode());
	        BufferedReader rd;
	        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
	            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	        } else {
	            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	        }
	        StringBuilder sb = new StringBuilder();
	        String line;
	        while ((line = rd.readLine()) != null) {
	            sb.append(line);
	        }
	        rd.close();
	        conn.disconnect();
	        System.out.println(sb.toString());
	    }
	}

 
