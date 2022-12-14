package com.kh.realfinal.apply.api;

import java.io.BufferedReader;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.RemndrMdl;
import com.kh.realfinal.apply.model.vo.UrbtyMdl;
import com.kh.realfinal.apply.model.vo.UrbtyOfctlLttotPblancDetail;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class ApplyApi {

	public static String serviceKey = "NZYi39rOf4Im1qZB4WQ8gwWS6g%2BpNbXMwh%2BuRt%2Ffm5oQsb6EP7XRN6N4MW%2FawI6xgU5aEdPDsG03qwy0FDD7Fw%3D%3D";

	public static String APPLY_RemndrLttotPblancDetail_URL = "https://api.odcloud.kr/api/ApplyhomeInfoDetailSvc/v1/getRemndrLttotPblancDetail";
	public static String APPLY_RemndrMdl_URL = "https://api.odcloud.kr/api/ApplyhomeInfoDetailSvc/v1/getRemndrLttotPblancMdl";

	public static String APPLY_UrbtyOfctlLttotPblancDetail_URL = "https://api.odcloud.kr/api/ApplyhomeInfoDetailSvc/v1/getUrbtyOfctlLttotPblancDetail";
	public static String APPLY_UrbtyMdl_URL = "https://api.odcloud.kr/api/ApplyhomeInfoDetailSvc/v1/getUrbtyOfctlLttotPblancMdl";

	public static void main(String[] args) {
//		
//		List<UrbtyOfctlLttotPblancDetail> list = callRemndrLttotPblancDetailByJSON();
//		for (UrbtyOfctlLttotPblancDetail re : list) {
//			System.out.println(re.toString());
//		}
		
//		List<RemndrLttotPblancDetail> list = callRemndrLttotPblancDetailByJSON();
//		for (RemndrLttotPblancDetail re : list) {
//			System.out.println(re.toString());
//		}
	}

	public static List<RemndrLttotPblancDetail> callRemndrLttotPblancDetailByJSON() {
		List<RemndrLttotPblancDetail> list = new ArrayList<>();
		int page = 1;

		try {
			loop: while (true) {

				StringBuilder urlBuilder = new StringBuilder(APPLY_RemndrLttotPblancDetail_URL);

				urlBuilder.append("?" + "page=" + page);
				urlBuilder.append("&" + "perPage=100");
				urlBuilder.append("&" + "serviceKey=" + serviceKey);

				System.out.println("pageNumber : " + page);

				URL url = new URL(urlBuilder.toString());
//				System.out.println(url);
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();
				conn.setRequestMethod("GET");
				conn.setRequestProperty("Accept", "application/json");

				int code = conn.getResponseCode();
//				System.out.println("Response code: " + code);
				if (code < 200 || code >= 300) {
//					System.out.println("???????????? ?????????????????????.");
					return null;
				}

				InputStreamReader isr = new InputStreamReader(conn.getInputStream());
				BufferedReader br = new BufferedReader(isr);

				JSONParser jsonParser = new JSONParser();
				JSONObject rootObj = (JSONObject) jsonParser.parse(br);
//				JSONObject childObj = (JSONObject) rootObj.get("data");
				JSONArray RemndrDetailArray = (JSONArray) rootObj.get("data");

				if (RemndrDetailArray.isEmpty()) {
					break loop;
				}
				if (RemndrDetailArray.size() > 0) {
					for (int i = 0; i < RemndrDetailArray.size(); i++) {
						try {

							JSONObject obj = (JSONObject) RemndrDetailArray.get(i);

							String house_manage_no = String.valueOf(obj.get("HOUSE_MANAGE_NO"));
							String pblanc_no = String.valueOf(obj.get("PBLANC_NO"));
							String house_nm = String.valueOf(obj.get("HOUSE_NM"));
							String house_secd = String.valueOf(obj.get("HOUSE_SECD"));
							String house_secd_nm = String.valueOf(obj.get("HOUSE_SECD_NM"));
							String hssply_zip = String.valueOf(obj.get("HSSPLY_ZIP"));
							String hssply_adres = String.valueOf(obj.get("HSSPLY_ADRES"));
							String tot_suply_hshldco = String.valueOf(obj.get("TOT_SUPLY_HSHLDCO"));
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
							String subscrpt_area_code_nm = String.valueOf(obj.get("SUBSCRPT_AREA_CODE_NM"));

							RemndrLttotPblancDetail rd = new RemndrLttotPblancDetail(house_manage_no, pblanc_no, house_nm, house_secd, house_secd_nm, hssply_zip, hssply_adres, tot_suply_hshldco, rcrit_pblanc_de, subscrpt_rcept_bgnde, subscrpt_rcept_endde, spsply_rcept_bgnde, spsply_rcept_endde, gnrl_rcept_rcptde, gnrl_rcept_endde, przwner_presnatn_de, cntrct_cncls_bgnde, cntrct_cncls_endde, hmpg_adres, bsns_mby_nm, mdhs_telno, mvn_prearnge_ym, subscrpt_area_code_nm);
							list.add(rd);

//					System.out.println(house_secd);
						} catch (Exception e) {
							e.printStackTrace();
						}
					}
				}
				page++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public static List<RemndrMdl> RemndrMdlByJSON(String string, String pblanc_no) {
		List<RemndrMdl> list = new ArrayList<>();

		try {
			StringBuilder urlBuilder = new StringBuilder(APPLY_RemndrMdl_URL);
			urlBuilder.append("?" + "page=1");
			urlBuilder.append("&" + "perPage=100");
			urlBuilder.append("&" + "returnType=JSON");
			urlBuilder.append("&cond%5B" + "HOUSE_MANAGE_NO%3A%3AEQ%5D=" + string);
			urlBuilder.append("&cond%5B" + "PBLANC_NO%3A%3AEQ%5D=" + pblanc_no);
			urlBuilder.append("&" + "serviceKey=" + serviceKey);

			URL url = new URL(urlBuilder.toString());
//				System.out.println(url);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", "application/json");

			int code = conn.getResponseCode();
//				System.out.println("Response code: " + code);
			if (code < 200 || code >= 300) {
//					System.out.println("???????????? ?????????????????????.");
				return null;
			}

			InputStreamReader isr = new InputStreamReader(conn.getInputStream());
			BufferedReader br = new BufferedReader(isr);

			JSONParser jsonParser = new JSONParser();
			JSONObject rootObj = (JSONObject) jsonParser.parse(br);
//				JSONObject childObj = (JSONObject) rootObj.get("data");
			JSONArray RemndrMdlArray = (JSONArray) rootObj.get("data");

//				JsonParser jsonParser = new JsonParser();
//				JsonObject rootObj = (JsonObject) jsonParser.parse(br);
//				JsonObject childObj = rootObj.getAsJsonObject("data");
//				JsonArray UDetailArray = rootObj.getAsJsonArray("data");
//				System.out.println(UDetailArray.toString());

			if (RemndrMdlArray.size() > 0) {
				for (int i = 0; i < RemndrMdlArray.size(); i++) {
					try {
						JSONObject obj = (JSONObject) RemndrMdlArray.get(i);

						String model_no = String.valueOf(obj.get("MODEL_NO"));
						String house_ty = String.valueOf(obj.get("HOUSE_TY"));
						String supply_ar = String.valueOf(obj.get("SUPPLY_AR"));
						String suply_hshldco = String.valueOf(obj.get("SUPLY_HSHLDCO"));
						String spsply_hshldco = String.valueOf(obj.get("SPSPLY_HSHLDCO"));
						String lttot_top_amount = String.valueOf(obj.get("LTTOT_TOP_AMOUNT"));

						RemndrMdl rm = new RemndrMdl(pblanc_no, house_ty, model_no, house_ty, supply_ar, suply_hshldco, spsply_hshldco, lttot_top_amount);
						list.add(rm);

//					System.out.println(lttot_top_amount);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public static List<UrbtyOfctlLttotPblancDetail> callUrbtyOfctlLttotPblancDetailByJSON() {
		List<UrbtyOfctlLttotPblancDetail> list = new ArrayList<>();
		int page = 1;

		try {
			loop: while (true) {

				StringBuilder urlBuilder = new StringBuilder(APPLY_UrbtyOfctlLttotPblancDetail_URL);

				urlBuilder.append("?" + "page=" + page);
				urlBuilder.append("&" + "perPage=100");
				urlBuilder.append("&" + "serviceKey=" + serviceKey);

				System.out.println("pageNumber : " + page);

				URL url = new URL(urlBuilder.toString());
//				System.out.println(url);
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();
				conn.setRequestMethod("GET");
				conn.setRequestProperty("Accept", "application/json");

				int code = conn.getResponseCode();
//				System.out.println("Response code: " + code);
				if (code < 200 || code >= 300) {
//					System.out.println("???????????? ?????????????????????.");
					return null;
				}

				InputStreamReader isr = new InputStreamReader(conn.getInputStream());
				BufferedReader br = new BufferedReader(isr);

				JSONParser jsonParser = new JSONParser();
				JSONObject rootObj = (JSONObject) jsonParser.parse(br);
//				JSONObject childObj = (JSONObject) rootObj.get("data");
				JSONArray UDetailArray = (JSONArray) rootObj.get("data");

				if (UDetailArray.isEmpty()) {
					break loop;
				}

				if (UDetailArray.size() > 0) {
					for (int i = 0; i < UDetailArray.size(); i++) {
						try {

							JSONObject obj = (JSONObject) UDetailArray.get(i);

							String house_manage_no = String.valueOf(obj.get("HOUSE_MANAGE_NO"));
							String pblanc_no = String.valueOf(obj.get("PBLANC_NO"));
							String house_nm = String.valueOf(obj.get("HOUSE_NM"));
							String house_secd = String.valueOf(obj.get("HOUSE_SECD"));
							String house_secd_nm = String.valueOf(obj.get("HOUSE_SECD_NM"));
							String house_dtl_secd = String.valueOf(obj.get("HOUSE_DTL_SECD"));
							String house_dtl_secd_nm = String.valueOf(obj.get("HOUSE_DTL_SECD_NM"));
							String search_house_secd = String.valueOf(obj.get("SEARCH_HOUSE_SECD"));
							String hssply_zip = String.valueOf(obj.get("HSSPLY_ZIP"));
							String hssply_adres = String.valueOf(obj.get("HSSPLY_ADRES"));
							String tot_suply_hshldco = String.valueOf(obj.get("TOT_SUPLY_HSHLDCO"));
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
							String subscrpt_area_code_nm = String.valueOf(obj.get("SUBSCRPT_AREA_CODE_NM"));

							UrbtyOfctlLttotPblancDetail ud = new UrbtyOfctlLttotPblancDetail(house_manage_no, pblanc_no, house_nm, house_secd, house_secd_nm, house_dtl_secd, house_dtl_secd_nm, search_house_secd, hssply_zip, hssply_adres, tot_suply_hshldco, rcrit_pblanc_de, subscrpt_rcept_bgnde, subscrpt_rcept_endde, przwner_presnatn_de, cntrct_cncls_bgnde, cntrct_cncls_endde, hmpg_adres, bsns_mby_nm, mdhs_telno, mvn_prearnge_ym, subscrpt_area_code_nm);
							list.add(ud);

//					System.out.println(house_manage_no);
//					System.out.println(pblanc_no);
//					System.out.println(house_nm);
						} catch (Exception e) {
							e.printStackTrace();
						}
					}
				}
				page++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public static List<UrbtyMdl> UrbtyMdlByJSON(String string, String pblanc_no) {
		List<UrbtyMdl> list = new ArrayList<>();

		try {
//			System.out.println("pageNumber : " + page);
			StringBuilder urlBuilder = new StringBuilder(APPLY_UrbtyMdl_URL);

			urlBuilder.append("?" + "page=1");
			urlBuilder.append("&" + "perPage=100");
			urlBuilder.append("&" + "returnType=JSON");
			urlBuilder.append("&cond%5B" + "HOUSE_MANAGE_NO%3A%3AEQ%5D=" + string);
			urlBuilder.append("&cond%5B" + "PBLANC_NO%3A%3AEQ%5D=" + pblanc_no);
			urlBuilder.append("&" + "serviceKey=" + serviceKey);

			URL url = new URL(urlBuilder.toString());
//				System.out.println(url);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", "application/json");

			int code = conn.getResponseCode();
//				System.out.println("Response code: " + code);
			if (code < 200 || code >= 300) {
//					System.out.println("???????????? ?????????????????????.");
				return null;
			}

			InputStreamReader isr = new InputStreamReader(conn.getInputStream());
			BufferedReader br = new BufferedReader(isr);

			JSONParser jsonParser = new JSONParser();
			JSONObject rootObj = (JSONObject) jsonParser.parse(br);
//				JSONObject childObj = (JSONObject) rootObj.get("data");
			JSONArray UrbtyMdlArray = (JSONArray) rootObj.get("data");

//				JsonParser jsonParser = new JsonParser();
//				JsonObject rootObj = (JsonObject) jsonParser.parse(br);
//				JsonObject childObj = rootObj.getAsJsonObject("data");
//				JsonArray UDetailArray = rootObj.getAsJsonArray("data");
//				System.out.println(UDetailArray.toString());

			if (UrbtyMdlArray.size() > 0) {
				for (int i = 0; i < UrbtyMdlArray.size(); i++) {
					try {

						JSONObject obj = (JSONObject) UrbtyMdlArray.get(i);

						String model_no = String.valueOf(obj.get("MODEL_NO"));
						String gp = String.valueOf(obj.get("GP"));
						String tp = String.valueOf(obj.get("TP"));
						String excluse_ar = String.valueOf(obj.get("EXCLUSE_AR"));
						String suply_hshldco = String.valueOf(obj.get("SUPLY_HSHLDCO"));
						String suply_amount = String.valueOf(obj.get("SUPLY_AMOUNT"));
						String subscrpt_reqst_amount = String.valueOf(obj.get("SUBSCRPT_REQST_AMOUNT"));

						UrbtyMdl um = new UrbtyMdl(pblanc_no, pblanc_no, model_no, gp, tp, excluse_ar, suply_hshldco, suply_amount, subscrpt_reqst_amount);
						list.add(um);

//					System.out.println(subscrpt_reqst_amount);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
