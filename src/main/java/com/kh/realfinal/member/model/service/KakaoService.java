package com.kh.realfinal.member.model.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.kh.realfinal.member.model.mapper.MemberMapper;
import com.kh.realfinal.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class KakaoService {
	@Autowired
	private MemberMapper mapper;
	

	public String getAccessToken(String authorize_code) {
		String access_Token = "";
		String refresh_Token = "";
		String reqURL = "https://kauth.kakao.com/oauth/token";

		try {
			URL url = new URL(reqURL);
            
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			// POST 요청을 위해 기본값이 false인 setDoOutput을 true로
            
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);
			// POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
            
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuilder sb = new StringBuilder();
			sb.append("grant_type=authorization_code");
            
			sb.append("&client_id=cd8b1886f132139b606ba3a3939880a9"); //본인이 발급받은 key
			sb.append("&redirect_uri=http://localhost:82/kakao/callback"); // 본인이 설정한 주소
            
			sb.append("&code=" + authorize_code);
			bw.write(sb.toString());
			bw.flush();
            
            
			// 요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";
            
			while ((line = br.readLine()) != null) {
				result += line;
			}
//			System.out.println("response body : " + result);
            
			// Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
            
			access_Token = element.getAsJsonObject().get("access_token").getAsString();
			refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();
            
			System.out.println("access_token : " + access_Token);
			System.out.println("refresh_token : " + refresh_Token);
            
			br.close();
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return access_Token;
	}


	@Transactional(rollbackFor = Exception.class)
	public Member getUserInfo(String access_Token) {
		Member userInfo = new Member();
		String reqURL = "https://kapi.kakao.com/v2/user/me";
		try {
			System.out.println("체크 포인트1");
			URL url = new URL(reqURL);
			System.out.println("체크 포인트1.5 url : " + url);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			System.out.println("체크 포인트2 conn : " + conn);
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Authorization", "Bearer " + access_Token);
			System.out.println("체크 포인트3");
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream())); //이부분 오류인듯
			System.out.println("체크 포인트3.5");
			
			System.out.println("체크 포인트4 br : " + br);
			String line = "";
			String result = "";
			
			while ((line = br.readLine()) != null) {
				result += line;
			}
//			System.out.println("response body : " + result);
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
			System.out.println("체크 포인트3");
			JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
			JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();
			String nickname = properties.getAsJsonObject().get("nickname").getAsString();
			String email = kakao_account.getAsJsonObject().get("email").getAsString();
			String id = kakao_account.getAsJsonObject().get("id").getAsString();
			System.out.println("id : " + id);
			System.out.println("nickname : " + nickname);
			System.out.println("email : " + email);
			userInfo.setUser_id(id);
			userInfo.setUser_name(nickname);
			// 카카오로그인 기능은 무조건 일반로그인으로 하지못하게끔 하기 위해서 비밀번호 설정
			userInfo.setUser_password("z4PhNX7vuL3xVChQ1m2AB9Yg5AULVxXcg/SpIdNs6c5H0NE8XYXysP+DGNKHfuwvY7kxvUdBeoGlODJ6+SfaPg==");
			userInfo.setUser_email(email);
		} catch (IOException e) {
			System.out.println("유저인포 가져오기 실패");
			e.printStackTrace();
		}
			Member kakaoMember = mapper.selectMember(userInfo.getUser_email());
			if(kakaoMember == null) {
			int result = mapper.insertMember(userInfo);
			System.out.println("insert 성공 : " + result);
			}
			
			return mapper.selectMember(userInfo.getUser_id());
	}
//     public String getReturnAccessToken(String code) {
//         String access_token = "";
//         String refresh_token = "";
//         String reqURL = "https://kauth.kakao.com/oauth/token";
//
//        try {
//            URL url = new URL(reqURL);
//            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
//
//             //HttpURLConnection 설정 값 셋팅
//             conn.setRequestMethod("POST");
//             conn.setDoOutput(true);
//
//
//             // buffer 스트림 객체 값 셋팅 후 요청
//             BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
//             StringBuilder sb = new StringBuilder();
//             sb.append("grant_type=authorization_code");
//             sb.append("&client_id=REST API 앱키 입력");  //앱 KEY VALUE
//             sb.append("&redirect_uri=http://localhost:8080/kakao_callback"); // 앱 CALLBACK 경로
//             sb.append("&code=" + code);
//             bw.write(sb.toString());
//             bw.flush();
//
//             //  RETURN 값 result 변수에 저장
//             BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
//             String br_line = "";
//             String result = "";
//
//             while ((br_line = br.readLine()) != null) {
//                 result += br_line;
//             }
//
//             JsonParser parser = new JsonParser();
//             JsonElement element = parser.parse(result);
//
//
//             // 토큰 값 저장 및 리턴
//             access_token = element.getAsJsonObject().get("access_token").getAsString();
//             refresh_token = element.getAsJsonObject().get("refresh_token").getAsString();
//
//             br.close();
//             bw.close();
//         } catch (IOException e) {
//             e.printStackTrace();
//         }
//
//         return access_token;
//     }
//
//     public Map<String,Object> getUserInfo(String access_token) {
//            Map<String,Object> resultMap =new HashMap<>();
//            String reqURL = "https://kapi.kakao.com/v2/user/me";
//             try {
//                 URL url = new URL(reqURL);
//                 HttpURLConnection conn = (HttpURLConnection) url.openConnection();
//                 conn.setRequestMethod("GET");
//
//                //요청에 필요한 Header에 포함될 내용
//                 conn.setRequestProperty("Authorization", "Bearer " + access_token);
//
//                 int responseCode = conn.getResponseCode();
//                 System.out.println("responseCode : " + responseCode);
//
//                 BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
//
//                 String br_line = "";
//                 String result = "";
//
//                 while ((br_line = br.readLine()) != null) {
//                     result += br_line;
//                 }
//                System.out.println("response:" + result);
//
//
//                 JsonParser parser = new JsonParser();
//                 JsonElement element = parser.parse(result);
//                 log.warn("element:: " + element);
//                 JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
//                 JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();
//                 log.warn("id:: "+element.getAsJsonObject().get("id").getAsString());
//                 String id = element.getAsJsonObject().get("id").getAsString();
//                 String nickname = properties.getAsJsonObject().get("nickname").getAsString();
//                 String email = kakao_account.getAsJsonObject().get("email").getAsString();
//                 log.warn("email:: " + email);
//                 resultMap.put("nickname", nickname);
//                 resultMap.put("id", id);
//                 resultMap.put("email", email); 
//
//             } catch (IOException e) {
//                 // TODO Auto-generated catch block
//                 e.printStackTrace();
//             }
//             return resultMap;
//         }
}
