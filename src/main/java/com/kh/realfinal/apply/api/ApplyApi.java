package com.kh.realfinal.apply.api;

import java.io.BufferedReader;


import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.UrbtyOfctlLttotPblancDetail;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
public class ApplyApi {

//	https://api.odcloud.kr/api/ApplyhomeInfoDetailSvc/v1/getUrbtyOfctlLttotPblancDetail?perPage=302&page=1&serviceKey=NZYi39rOf4Im1qZB4WQ8gwWS6g%2BpNbXMwh%2BuRt%2Ffm5oQsb6EP7XRN6N4MW%2FawI6xgU5aEdPDsG03qwy0FDD7Fw%3D%3D

	public static String serviceKey = "NZYi39rOf4Im1qZB4WQ8gwWS6g%2BpNbXMwh%2BuRt%2Ffm5oQsb6EP7XRN6N4MW%2FawI6xgU5aEdPDsG03qwy0FDD7Fw%3D%3D";
	public static String APPLY_UrbtyOfctlLttotPblancDetail_JSON_URL = "https://api.odcloud.kr/api/ApplyhomeInfoDetailSvc/v1/getUrbtyOfctlLttotPblancDetail";
	public static String APPLY_RemndrLttotPblancDetail_JSON_URL = "https://api.odcloud.kr/api/ApplyhomeInfoDetailSvc/v1/getRemndrLttotPblancDetail";

	public static void main(String[] args) {
		ApplyApi.UrbtyOfctlLttotPblancDetailByJSON();
		ApplyApi.RemndrLttotPblancDetailByJSON();
		
	}

	public static List<UrbtyOfctlLttotPblancDetail> UrbtyOfctlLttotPblancDetailByJSON() {
		List<UrbtyOfctlLttotPblancDetail> list = new ArrayList<>();
		int perPage = 10;
		int page = 1;

		while (true) {

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

				JSONParser jsonParser = new JSONParser();
				JSONObject rootObj = (JSONObject) jsonParser.parse(br);
//				JSONObject childObj = (JSONObject) rootObj.get("data");
				JSONArray UDetailArray = (JSONArray) rootObj.get("data");

				
//				JsonParser jsonParser = new JsonParser();
//				JsonObject rootObj = (JsonObject) jsonParser.parse(br);
//				JsonObject childObj = rootObj.getAsJsonObject("data");
//				JsonArray UDetailArray = rootObj.getAsJsonArray("data");
//				System.out.println(UDetailArray.toString());

				for (int i = 0; i < UDetailArray.size(); i++) {

					JSONObject obj = (JSONObject) UDetailArray.get(i);

					int house_manage_no = Integer.parseInt(String.valueOf(obj.get("HOUSE_MANAGE_NO")));
					String pblanc_no = String.valueOf(obj.get("PBLANC_NO"));
					String house_nm = String.valueOf(obj.get("HOUSE_NM"));
					int house_secd = Integer.parseInt(String.valueOf(obj.get("HOUSE_SECD")));
					String house_secd_nm = String.valueOf(obj.get("HOUSE_SECD_NM"));
					int house_dtl_secd = Integer.parseInt(String.valueOf(obj.get("HOUSE_DTL_SECD")));
					String house_dtl_secd_nm = String.valueOf(obj.get("HOUSE_DTL_SECD_NM"));
					int search_house_secd = Integer.parseInt(String.valueOf(obj.get("SEARCH_HOUSE_SECD")));
					int hssply_zip = Integer.parseInt(String.valueOf(obj.get("HSSPLY_ZIP")));
					String hssply_adres = String.valueOf(obj.get("HSSPLY_ADRES"));
					int tot_suply_hshldco = Integer.parseInt(String.valueOf(obj.get("TOT_SUPLY_HSHLDCO")));
					String rcrit_pblanc_de = String.valueOf(obj.get("RCRIT_PBLANC_DE"));
					String subscrpt_rcept_bgnde = String.valueOf(obj.get("SUBSCRPT_RCEPT_BGNDE"));
					String subscrpt_rcept_endde = String.valueOf(obj.get("SUBSCRPT_RCEPT_ENDDE"));
					String przwner_presnatn_de = String.valueOf(obj.get("PRZWNER_PRESNATN_DE"));
					String cntrct_cncls_bgnde = String.valueOf(obj.get("CNTRCT_CNCLS_BGNDE"));
					String cntrct_cncls_endde = String.valueOf(obj.get("CNTRCT_CNCLS_ENDDE"));
					String hmpg_adres = String.valueOf(obj.get("HMPG_ADRES"));
					String bsns_mby_nm = String.valueOf(obj.get("BSNS_MBY_NM"));
					String mdhs_telno = String.valueOf(obj.get("MDHS_TELNO"));
					String mvn_prearnge_ym = String.valueOf(obj.get("MVN_PREARNGE_YM"));

					UrbtyOfctlLttotPblancDetail ud = new UrbtyOfctlLttotPblancDetail(house_manage_no, pblanc_no, house_nm, house_secd, house_secd_nm, house_dtl_secd, house_dtl_secd_nm, search_house_secd, hssply_zip, hssply_adres, tot_suply_hshldco, rcrit_pblanc_de, subscrpt_rcept_bgnde, subscrpt_rcept_endde, przwner_presnatn_de, cntrct_cncls_bgnde, cntrct_cncls_endde, hmpg_adres, bsns_mby_nm, mdhs_telno, mvn_prearnge_ym);
					list.add(ud);
					
//					System.out.println(house_manage_no);
//					System.out.println(pblanc_no);
//					System.out.println(house_nm);
				}
//				System.out.println("*****************");
//				System.out.println(list);
				page++;
				if (page == 32) {
					break;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
//	총 데이터 303
	}
	
	
	
	public static List<RemndrLttotPblancDetail> RemndrLttotPblancDetailByJSON() {
		List<RemndrLttotPblancDetail> list = new ArrayList<>();
		int perPage = 10;
		int page = 1;

		while (true) {

			System.out.println("pageNumber : " + page);
			StringBuilder urlBuilder = new StringBuilder(APPLY_RemndrLttotPblancDetail_JSON_URL);

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

				JSONParser jsonParser = new JSONParser();
				JSONObject rootObj = (JSONObject) jsonParser.parse(br);
//				JSONObject childObj = (JSONObject) rootObj.get("data");
				JSONArray RemndrDetailArray = (JSONArray) rootObj.get("data");

				
//				JsonParser jsonParser = new JsonParser();
//				JsonObject rootObj = (JsonObject) jsonParser.parse(br);
//				JsonObject childObj = rootObj.getAsJsonObject("data");
//				JsonArray UDetailArray = rootObj.getAsJsonArray("data");
//				System.out.println(UDetailArray.toString());

				for (int i = 0; i < RemndrDetailArray.size(); i++) {

					JSONObject obj = (JSONObject) RemndrDetailArray.get(i);

					int house_manage_no = Integer.parseInt(String.valueOf(obj.get("HOUSE_MANAGE_NO")));
					String pblanc_no = String.valueOf(obj.get("PBLANC_NO"));
					String house_nm = String.valueOf(obj.get("HOUSE_NM"));
					int house_secd = Integer.parseInt(String.valueOf(obj.get("HOUSE_SECD")));
					String house_secd_nm = String.valueOf(obj.get("HOUSE_SECD_NM"));
					int hssply_zip = Integer.parseInt(String.valueOf(obj.get("HSSPLY_ZIP")));
					String hssply_adres = String.valueOf(obj.get("HSSPLY_ADRES"));
					int tot_suply_hshldco = Integer.parseInt(String.valueOf(obj.get("TOT_SUPLY_HSHLDCO")));
					String rcrit_pblanc_de = String.valueOf(obj.get("RCRIT_PBLANC_DE"));
					String subscrpt_rcept_bgnde = String.valueOf(obj.get("SUBSCRPT_RCEPT_BGNDE"));
					String subscrpt_rcept_endde = String.valueOf(obj.get("SUBSCRPT_RCEPT_ENDDE"));
					String spsply_rcept_bgnde = String.valueOf(obj.get("SPSPLY_RCEPT_BGNDE"));
					String spsply_rcept_endde = String.valueOf(obj.get("SPSPLY_RCEPT_ENDDE"));
					String gnrl_rcept_rcptde = String.valueOf(obj.get("GNRL_RCEPT_RCPTDE"));
					String gnrl_rcept_endde = String.valueOf(obj.get("GNRL_RCEPT_ENDDE"));
					String przwner_presnatn_de = String.valueOf(obj.get("PRZWNER_PRESNATN_DE"));
					String cntrct_cncls_bgnde = String.valueOf(obj.get("CNTRCT_CNCLS_BGNDE"));
					String cntrct_cncls_endde = String.valueOf(obj.get("CNTRCT_CNCLS_ENDDE"));
					String hmpg_adres = String.valueOf(obj.get("HMPG_ADRES"));
					String bsns_mby_nm = String.valueOf(obj.get("BSNS_MBY_NM"));
					String mdhs_telno = String.valueOf(obj.get("MDHS_TELNO"));
					String mvn_prearnge_ym = String.valueOf(obj.get("MVN_PREARNGE_YM"));

					RemndrLttotPblancDetail rd = new RemndrLttotPblancDetail(house_manage_no, pblanc_no, house_nm, house_secd, house_secd_nm, hssply_zip, hssply_adres, tot_suply_hshldco, rcrit_pblanc_de, subscrpt_rcept_bgnde, subscrpt_rcept_endde, spsply_rcept_bgnde, spsply_rcept_endde, gnrl_rcept_rcptde, gnrl_rcept_endde, przwner_presnatn_de, cntrct_cncls_bgnde, cntrct_cncls_endde, hmpg_adres, bsns_mby_nm, mdhs_telno, mvn_prearnge_ym);
					list.add(rd);
					
//					System.out.println(house_secd);
				}
//				System.out.println("*****************");
//				System.out.println(list);
				page++;
				if (page == 56) {
					break;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
//	총 데이터 303
	}

	
	
	

}
