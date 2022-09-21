package com.kh.realfinal.apply.api;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.kh.realfinal.apply.model.vo.UrbtyOfctlLttotPblancDetail;

public class ApplyApi {

	
//	https://api.odcloud.kr/api/ApplyhomeInfoDetailSvc/v1/getUrbtyOfctlLttotPblancDetail?perPage=302&page=1&serviceKey=NZYi39rOf4Im1qZB4WQ8gwWS6g%2BpNbXMwh%2BuRt%2Ffm5oQsb6EP7XRN6N4MW%2FawI6xgU5aEdPDsG03qwy0FDD7Fw%3D%3D
	
	public static String serviceKey = "NZYi39rOf4Im1qZB4WQ8gwWS6g%2BpNbXMwh%2BuRt%2Ffm5oQsb6EP7XRN6N4MW%2FawI6xgU5aEdPDsG03qwy0FDD7Fw%3D%3D";
	public static String APPLY_UrbtyOfctlLttotPblancDetail_JSON_URL = "https://api.odcloud.kr/api/ApplyhomeInfoDetailSvc/v1/getUrbtyOfctlLttotPblancDetail";

	
	public static void main(String[] args) {
		ApplyApi.UrbtyOfctlLttotPblancDetailByJSON();
	}

	public static List<UrbtyOfctlLttotPblancDetail> UrbtyOfctlLttotPblancDetailByJSON() {
		List<UrbtyOfctlLttotPblancDetail> list = new ArrayList<>();
		int perPage = 10;
		int page = 1;
		
		while(true) {
			
			System.out.println("pageNumber : " + page);
			StringBuilder urlBuilder = new StringBuilder(APPLY_UrbtyOfctlLttotPblancDetail_JSON_URL);
			
			urlBuilder.append("?" + "perPage=" + perPage);
			urlBuilder.append("&" + "page=" + page);
			urlBuilder.append("&" + "serviceKey=" + serviceKey);
			
			try {
				URL url = new URL(urlBuilder.toString());
//				System.out.println(url);
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();
				conn.setRequestMethod("GET");
				
				conn.setRequestProperty("Content-type", "application/json");
				
				int code = conn.getResponseCode();
//				System.out.println("Response code: " + code);
				if (code < 200 || code >= 300) {
//					System.out.println("페이지가 잘못되었습니다.");
					return null;
				}
				
				InputStreamReader isr = new InputStreamReader(conn.getInputStream());
				BufferedReader br = new BufferedReader(isr);
				
				JsonParser jsonParser = new JsonParser();
				JsonObject rootObj = (JsonObject) jsonParser.parse(br);
//				JsonObject childObj = rootObj.getAsJsonObject("data");
				JsonArray UDetailArray = rootObj.getAsJsonArray("data");
//				System.out.println(UDetailArray.toString());
				
				for (int i = 0; i < UDetailArray.size(); i++) {
					JsonObject obj = (JsonObject) UDetailArray.get(i);
					String house_manage_no = jsonObjToString(obj, "HOUSE_MANAGE_NO");
					String pblanc_no = jsonObjToString(obj, "PBLANC_NO");
					String house_nm = jsonObjToString(obj, "HOUSE_NM");
					String house_secd = jsonObjToString(obj, "HOUSE_SECD");
					String house_secd_nm = jsonObjToString(obj, "HOUSE_SECD_NM");
					String house_dtl_secd = jsonObjToString(obj, "HOUSE_DTL_SECD");
					String house_dtl_secd_nm = jsonObjToString(obj, "HOUSE_DTL_SECD_NM");
					String search_house_secd = jsonObjToString(obj, "SEARCH_HOUSE_SECD");
					String hssply_zip = jsonObjToString(obj, "HSSPLY_ZIP");
					String hssply_hshldco = jsonObjToString(obj, "HSSPLY_HSHLDCO");
					String hssply_adres = jsonObjToString(obj, "HSSPLY_ADRES");
					String tot_suply_hshldco = jsonObjToString(obj, "TOT_SUPLY_HSHLDCO");
					String rcrit_pblanc_de = jsonObjToString(obj, "RCRIT_PBLANC_DE");
					String subscrpt_rcept_bgnde = jsonObjToString(obj, "SUBSCRPT_RCEPT_BGNDE");
					String subscrpt_rcept_endde = jsonObjToString(obj, "SUBSCRPT_RCEPT_ENDDE");
					String przwner_presnatn_de = jsonObjToString(obj, "PRZWNER_PRESNATN_DE");
					String cntrct_cncls_bgnde = jsonObjToString(obj, "CNTRCT_CNCLS_BGNDE");
					String cntrct_cncls_endde = jsonObjToString(obj, "CNTRCT_CNCLS_ENDDE");
					String hmpg_adres = jsonObjToString(obj, "HMPG_ADRES");
					String bsns_mby_nm = jsonObjToString(obj, "BSNS_MBY_NM");
					String mdhs_telno = jsonObjToString(obj, "MDHS_TELNO");
					String mvn_prearnge_ym = jsonObjToString(obj, "MVN_PREARNGE_YM");
					
					UrbtyOfctlLttotPblancDetail ud = new UrbtyOfctlLttotPblancDetail(house_manage_no, pblanc_no, house_nm, house_secd, house_secd_nm, house_dtl_secd, house_dtl_secd_nm, search_house_secd, i, hssply_hshldco, hssply_adres, tot_suply_hshldco, rcrit_pblanc_de, subscrpt_rcept_bgnde, subscrpt_rcept_endde, przwner_presnatn_de, cntrct_cncls_bgnde, cntrct_cncls_endde, hmpg_adres, bsns_mby_nm, mdhs_telno, mvn_prearnge_ym);
					list.add(ud);	
				}
//				System.out.println("*****************");
//				System.out.println(list);
				page++;
				if(page == 32) {
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
			return "";
		}		
	}
	
	
}
