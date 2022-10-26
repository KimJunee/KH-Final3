package com.kh.realfinal.apply.api;

import com.kh.realfinal.apply.model.vo.AptLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.AptLttotPblancMdl;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

public class AptLttotPblancDetailApi {
    public static String RE_SUBINFO_URL = "https://api.odcloud.kr/api/ApplyhomeInfoDetailSvc/v1/getAPTLttotPblancDetail";
    public static String RE_SUBINFO_URL2 = "https://api.odcloud.kr/api/ApplyhomeInfoDetailSvc/v1/getAPTLttotPblancMdl";
    public static String RE_SUBINFO_KEY = "Ils17WKLyDHtGcaqjHtHyTqfpCmf6YyF1MGryjYh6R1vuU23vWnmQ6PtoULKcygHb7jlMoiv1%2Fnn%2BE9aj4EuKw%3D%3D";

//    public static void main(String[] args) {
//    	List<AptLttotPblancDetail> list = callSubInfoByJson();
//    	for(AptLttotPblancDetail apt : list) {
//    		System.out.println(apt.toString());
//    	}
//    }

    public static List<AptLttotPblancDetail> callSubInfoByJson() {
        List<AptLttotPblancDetail> infoList = new ArrayList<>();
        int pageNum = 1;

        try {
            loop:
            while (true) {
                StringBuilder urlBuilder = new StringBuilder(RE_SUBINFO_URL);
                urlBuilder.append("?" + "page=" + pageNum);
                urlBuilder.append("&" + "perPage=100");
                urlBuilder.append("&" + "serviceKey=" + RE_SUBINFO_KEY);
                
                System.out.println("pageNum : " + pageNum);

                URL url = new URL(urlBuilder.toString());
                
                System.out.println(url.toString());
                
                HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                conn.setRequestMethod("GET");
                conn.setRequestProperty("Accept", "application/json");

                int code = conn.getResponseCode();
                if(code < 200 || code >= 300) {
                    System.out.println("페이지가 잘못되었습니다.");
                    return null;
                }

                InputStreamReader isr = new InputStreamReader(conn.getInputStream(), "UTF-8");
                BufferedReader br = new BufferedReader(isr);
                JSONParser parser = new JSONParser();
                Object obj = parser.parse(br);
                System.out.println("obj : " + obj.toString());
                
                JSONObject jsonmain = (JSONObject) obj;
                JSONArray jsonArr = (JSONArray) jsonmain.get("data");

                if(jsonArr.isEmpty()) {
                    break loop;
                }

                if(jsonArr.size() > 0) {
                    for(int i = 0; i < jsonArr.size(); i++) {
                    	try {
                    		JSONObject reInfo = (JSONObject) jsonArr.get(i);
                            
                            String bsns_mby_nm = (String) reInfo.get("BSNS_MBY_NM");
                            String cnstrct_entrps_nm = (String) reInfo.get("CNSTRCT_ENTRPS_NM");
                            String cntrct_cncls_bgnde = (String) reInfo.get("CNTRCT_CNCLS_BGNDE");
                            String cntrct_cncls_endde = (String) reInfo.get("CNTRCT_CNCLS_ENDDE");
                            String gnrl_rnk1_crsparea_rcept_pd = (String) reInfo.get("GNRL_RNK1_CRSPAREA_RCEPT_PD");
                            String gnrl_rnk1_etc_area_rcptde_pd = (String) reInfo.get("GNRL_RNK1_ETC_AREA_RCPTDE_PD");
                            String gnrl_rnk1_etc_gg_rcptde_pd = (String) reInfo.get("GNRL_RNK1_ETC_GG_RCPTDE_PD");
                            String gnrl_rnk2_crsparea_rcept_pd = (String) reInfo.get("GNRL_RNK2_CRSPAREA_RCEPT_PD");
                            String gnrl_rnk2_etc_area_rcptde_pd = (String) reInfo.get("GNRL_RNK2_ETC_AREA_RCPTDE_PD");
                            String gnrl_rnk2_etc_gg_rcptde_pd = (String) reInfo.get("GNRL_RNK2_ETC_GG_RCPTDE_PD");
                            String hmpg_adres = (String) reInfo.get("HMPG_ADRES");
                            String house_dtl_secd = (String) reInfo.get("HOUSE_DTL_SECD");
                            String house_dtl_secd_nm = (String) reInfo.get("HOUSE_DTL_SECD_NM");
                            String house_manage_no = String.valueOf(reInfo.get("HOUSE_MANAGE_NO"));
                            String house_nm = (String) reInfo.get("HOUSE_NM");
                            String house_secd = (String) reInfo.get("HOUSE_SECD");
                            String house_secd_nm = (String) reInfo.get("HOUSE_SECD_NM");
                            String hssply_adres = (String) reInfo.get("HSSPLY_ADRES");
                            String hssply_zip = (String) reInfo.get("HSSPLY_ZIP");
                            String imprmn_bsns_at = (String) reInfo.get("IMPRMN_BSNS_AT");
                            String lrscl_bldlnd_at = (String) reInfo.get("LRSCL_BLDLND_AT");
                            String mdat_trget_area_secd = (String) reInfo.get("MDAT_TRGET_AREA_SECD");
                            String mdhs_telno = (String) reInfo.get("MDHS_TELNO");
                            String mvn_prearnge_ym = (String) reInfo.get("MVN_PREARNGE_YM");
                            String npln_prvopr_public_house_at = (String) reInfo.get("NPLN_PRVOPR_PUBLIC_HOUSE_AT");
                            String parcprc_uls_at = (String) reInfo.get("PARCPRC_ULS_AT");
                            String pblanc_no = String.valueOf(reInfo.get("PBLANC_NO"));
                            String przwner_presnatn_de = (String) reInfo.get("PRZWNER_PRESNATN_DE");
                            String public_house_earth_at = (String) reInfo.get("PUBLIC_HOUSE_EARTH_AT");
                            String rcept_bgnde = (String) reInfo.get("RCEPT_BGNDE");
                            String rcept_endde = (String) reInfo.get("RCEPT_ENDDE");
                            String rcrit_pblanc_de = (String) reInfo.get("RCRIT_PBLANC_DE");
                            String rent_secd = (String) reInfo.get("RENT_SECD");
                            String rent_secd_nm = (String) reInfo.get("RENT_SECD_NM");
                            String speclt_rdn_earth_at = (String) reInfo.get("SPECLT_RDN_EARTH_AT");
                            String spsply_rcept_bgnde = (String) reInfo.get("SPSPLY_RCEPT_BGNDE");
                            String spsply_rcept_endde = (String) reInfo.get("SPSPLY_RCEPT_ENDDE");
                            String subscrpt_area_code = (String) reInfo.get("SUBSCRPT_AREA_CODE");
                            String subscrpt_area_code_nm = (String) reInfo.get("SUBSCRPT_AREA_CODE_NM");
                            String tot_suply_hshldco = String.valueOf(reInfo.get("TOT_SUPLY_HSHLDCO"));
                            
//                            AptLttotPblancDetail aptLottoDetail = new AptLttotPblancDetail(bsns_mby_nm, cnstrct_entrps_nm,
//                            		cntrct_cncls_bgnde, cntrct_cncls_endde, gnrl_rnk1_crsparea_rcept_pd, gnrl_rnk1_etc_area_rcptde_pd,
//                            		gnrl_rnk1_etc_gg_rcptde_pd, gnrl_rnk2_crsparea_rcept_pd, gnrl_rnk2_etc_area_rcptde_pd, gnrl_rnk2_etc_gg_rcptde_pd,
//                            		hmpg_adres, house_dtl_secd, house_dtl_secd_nm, house_manage_no, house_nm, house_secd, house_secd_nm,
//                            		hssply_adres, hssply_zip, imprmn_bsns_at, lrscl_bldlnd_at, mdat_trget_area_secd, mdhs_telno, mvn_prearnge_ym,
//                            		npln_prvopr_public_house_at, parcprc_uls_at, pblanc_no, przwner_presnatn_de, public_house_earth_at, rcept_bgnde,
//                            		rcept_endde, rcrit_pblanc_de, rent_secd, rent_secd_nm, speclt_rdn_earth_at, spsply_rcept_bgnde, spsply_rcept_endde,
//                            		subscrpt_area_code, subscrpt_area_code_nm, tot_suply_hshldco);
                            
                            AptLttotPblancDetail aptLottoDetail = AptLttotPblancDetail.builder()
                            		.bsns_mby_nm(bsns_mby_nm)
                            		.cnstrct_entrps_nm(cnstrct_entrps_nm)
                            		.cntrct_cncls_bgnde(cntrct_cncls_bgnde)
                            		.cntrct_cncls_endde(cntrct_cncls_endde)
                            		.gnrl_rnk1_crsparea_rcept_pd(gnrl_rnk1_crsparea_rcept_pd)
                            		.gnrl_rnk1_etc_area_rcptde_pd(gnrl_rnk1_etc_area_rcptde_pd)
                            		.gnrl_rnk1_etc_gg_rcptde_pd(gnrl_rnk1_etc_gg_rcptde_pd)
                            		.gnrl_rnk2_crsparea_rcept_pd(gnrl_rnk2_crsparea_rcept_pd)
                            		.gnrl_rnk2_etc_area_rcptde_pd(gnrl_rnk2_etc_area_rcptde_pd)
                            		.gnrl_rnk2_etc_gg_rcptde_pd(gnrl_rnk2_etc_gg_rcptde_pd)
                            		.hmpg_adres(hmpg_adres)
                            		.house_dtl_secd(house_dtl_secd)
                            		.house_dtl_secd_nm(house_dtl_secd_nm)
                            		.house_manage_no(house_manage_no)
                            		.house_nm(house_nm)
                            		.house_secd(house_secd)
                            		.house_secd_nm(house_secd_nm)
                            		.hssply_adres(hssply_adres)
                            		.hssply_zip(hssply_zip)
                            		.imprmn_bsns_at(imprmn_bsns_at)
                            		.lrscl_bldlnd_at(lrscl_bldlnd_at)
                            		.mdat_trget_area_secd(mdat_trget_area_secd)
                            		.mdhs_telno(mdhs_telno)
                            		.mvn_prearnge_ym(mvn_prearnge_ym)
                            		.npln_prvopr_public_house_at(npln_prvopr_public_house_at)
                            		.parcprc_uls_at(parcprc_uls_at)
                            		.pblanc_no(pblanc_no)
                            		.przwner_presnatn_de(przwner_presnatn_de)
                            		.public_house_earth_at(public_house_earth_at)
                            		.rcept_bgnde(rcept_bgnde)
                            		.rcept_endde(rcept_endde)
                            		.rcrit_pblanc_de(rcrit_pblanc_de)
                            		.rent_secd(rent_secd)
                            		.rent_secd_nm(rent_secd_nm)
                            		.speclt_rdn_earth_at(speclt_rdn_earth_at)
                            		.spsply_rcept_bgnde(spsply_rcept_bgnde)
                            		.spsply_rcept_endde(spsply_rcept_endde)
                            		.subscrpt_area_code(subscrpt_area_code)
                            		.subscrpt_area_code_nm(subscrpt_area_code_nm)
                            		.tot_suply_hshldco(tot_suply_hshldco)
                            		.build();
                            		
                            infoList.add(aptLottoDetail);
                            
						} catch (Exception e) {
							System.out.println("데이터가 잘못되었습니다!");
							e.printStackTrace();
						}
                    }
                }
                pageNum++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return infoList;
    }
    
    
    public static List<AptLttotPblancMdl> aptDetailParsing(String house_manage_no, String pblanc_no) {
    	// https://api.odcloud.kr/api/ApplyhomeInfoDetailSvc/v1/getAPTLttotPblancMdl?page=1&perPage=100&returnType=JSON&cond%5BHOUSE_MANAGE_NO%3A%3AEQ%5D=2020000682&cond%5BPBLANC_NO%3A%3AEQ%5D=2020000682&serviceKey=Ils17WKLyDHtGcaqjHtHyTqfpCmf6YyF1MGryjYh6R1vuU23vWnmQ6PtoULKcygHb7jlMoiv1%2Fnn%2BE9aj4EuKw%3D%3D
    	List<AptLttotPblancMdl> detailInfo = new ArrayList<>();
    	
    	try {
            StringBuilder urlBuilder = new StringBuilder(RE_SUBINFO_URL2);
            urlBuilder.append("?" + "page=1");
            urlBuilder.append("&" + "perPage=100");
            urlBuilder.append("&" + "returnType=JSON");
            urlBuilder.append("&cond%5B" + "HOUSE_MANAGE_NO%3A%3AEQ%5D=" + house_manage_no);
            urlBuilder.append("&cond%5B" + "PBLANC_NO%3A%3AEQ%5D=" + pblanc_no);
            urlBuilder.append("&" + "serviceKey=" + RE_SUBINFO_KEY);
            
            URL url = new URL(urlBuilder.toString());
            
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Accept", "application/json");

            int code = conn.getResponseCode();
            if(code < 200 || code >= 300) {
                System.out.println("페이지가 잘못되었습니다.");
                return null;
            }

            InputStreamReader isr = new InputStreamReader(conn.getInputStream(), "UTF-8");
            BufferedReader br = new BufferedReader(isr);
            
            JSONParser parser = new JSONParser();
            Object obj = parser.parse(br);
            JSONObject jsonmain = (JSONObject) obj;
            JSONArray jsonArr = (JSONArray) jsonmain.get("data");

            
            if(jsonArr.size() > 0) {
                for(int i = 0; i < jsonArr.size(); i++) {
                	try {
                		JSONObject reInfo = (JSONObject) jsonArr.get(i);
                        
                        String etc_hshldco = String.valueOf(reInfo.get("ETC_HSHLDCO"));
                        String house_ty = (String) reInfo.get("HOUSE_TY");
                        String instt_recomend_hshldco = String.valueOf(reInfo.get("INSTT_RECOMEND_HSHLDCO"));
                        String lfe_frst_hshldco = String.valueOf(reInfo.get("LFE_FRST_HSHLDCO"));
                        String lttot_top_amount = (String) reInfo.get("LTTOT_TOP_AMOUNT");
                        String mnych_hshldco = String.valueOf(reInfo.get("MNYCH_HSHLDCO"));
                        String model_no = (String) reInfo.get("MODEL_NO");
                        String nwwds_hshldco = String.valueOf(reInfo.get("NWWDS_HSHLDCO"));
                        String old_parnts_suport_hshldco = String.valueOf(reInfo.get("OLD_PARNTS_SUPORT_HSHLDCO"));
                        String spsply_hshldco = String.valueOf(reInfo.get("SPSPLY_HSHLDCO"));
                        String suply_ar = (String) reInfo.get("SUPLY_AR");
                        String suply_hshldco = String.valueOf(reInfo.get("SUPLY_HSHLDCO"));
                        String transr_instt_enfsn_hshldco = String.valueOf(reInfo.get("TRANSR_INSTT_ENFSN_HSHLDCO"));
                        
                        AptLttotPblancMdl aptDetailInfo = new AptLttotPblancMdl(etc_hshldco, house_manage_no, house_ty,
                        		instt_recomend_hshldco, lfe_frst_hshldco, lttot_top_amount, mnych_hshldco, model_no,
                        		nwwds_hshldco, old_parnts_suport_hshldco, pblanc_no, spsply_hshldco, suply_ar,
                        		suply_hshldco, transr_instt_enfsn_hshldco);
                        
                        detailInfo.add(aptDetailInfo);
					} catch (Exception e) {
						System.out.println("주택형별 쪽 데이터가 잘못되었습니다!");
						e.printStackTrace();
					}
                }
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    	return detailInfo;
    }

}
