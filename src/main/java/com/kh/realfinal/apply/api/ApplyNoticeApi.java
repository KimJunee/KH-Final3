package com.kh.realfinal.apply.api;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.kh.realfinal.apply.model.vo.ApplyNotice;
import com.kh.realfinal.apply.model.vo.ApplyNoticeAttach;

public class ApplyNoticeApi {
	public static String NOTICE_URL = "http://apis.data.go.kr/B552555/lhNoticeInfo1/getNoticeInfo1";
	public static String NOTICE_DETAIL_URL = "http://apis.data.go.kr/B552555/lhNoticeDtlInfo1/getNoticeDtlInfo1";
	public static String KEY = "Ils17WKLyDHtGcaqjHtHyTqfpCmf6YyF1MGryjYh6R1vuU23vWnmQ6PtoULKcygHb7jlMoiv1%2Fnn%2BE9aj4EuKw%3D%3D";
	
//	public static void main(String[] args) {
//		List<ApplyNotice> list = callApplyNoticeByJson();
//		for(ApplyNotice notice : list) {
//			System.out.println(notice.toString());
//			
//			List<ApplyNoticeAttach> list2 = callApplyNoticeAttachByJson(notice.getCcr_cnnt_sys_ds_cd(), notice.getBbs_sn());
//			for(ApplyNoticeAttach attach : list2) {
//				System.out.println(attach.toString());
//			}
//		}
//	}
	
	public static List<ApplyNotice> callApplyNoticeByJson() {
		List<ApplyNotice> noticeList = new ArrayList<>();
		int pageNum = 1;
		
		try {
			loop:
			while(true) {
				StringBuilder urlBuilder = new StringBuilder(NOTICE_URL);
				urlBuilder.append("?" + "serviceKey=" + KEY);
				urlBuilder.append("&" + "PG_SZ=" + 100); // 1page에 나오는 
				urlBuilder.append("&" + "PAGE=" + pageNum); // page 수
				urlBuilder.append("&" + "SCH_ST_DT=" + "2022-01-01"); // 2022-01-01부터
				urlBuilder.append("&" + "SCH_ED_DT=" + "2022-11-01"); // 2022-11-01까지
				
				System.out.println("pageNum : " + pageNum);
				
				URL url = new URL(urlBuilder.toString());
				
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                conn.setRequestMethod("GET");
                conn.setRequestProperty("Accept", "application/json");

                int code = conn.getResponseCode();
                if(code < 200 || code >= 300) {
                    System.out.println("페이지가 잘못되었습니다.");
                    return null;
                }
                
                InputStreamReader isr = new InputStreamReader(conn.getInputStream());
				BufferedReader br = new BufferedReader(isr);
				JSONParser parser = new JSONParser();
                Object obj = parser.parse(br);
                
                JSONArray jsonArr = (JSONArray) obj;
				JSONObject jsonObj = (JSONObject) jsonArr.get(1);
				JSONArray jsonArr2 = (JSONArray)jsonObj.get("dsList");
                
                if(jsonObj.get("dsList") == null) {
                    break loop;
                }
                
                if(jsonArr2.size() > 0) {
                	for(int i = 0; i < jsonArr2.size(); i++) {
                		JSONObject notice = (JSONObject) jsonArr2.get(i);
                		
                		int rnum = Integer.parseInt((String) notice.get("RNUM"));
                		String bbs_sn = (String) notice.get("BBS_SN");
                		String ccr_cnnt_sys_ds_cd = (String) notice.get("CCR_CNNT_SYS_DS_CD");
                		String ais_tp_cd_nm = String.valueOf(notice.get("AIS_TP_CD_NM"));
                		String bbs_tl = (String) notice.get("BBS_TL");	
                		String dep_nm = (String) notice.get("DEP_NM");
                		String bbs_wou_dttm = (String) notice.get("BBS_WOU_DTTM");
                		String link_url = (String) notice.get("LINK_URL");
                		
                		// detail Info api 파싱 시작 -----------------------------------
                		
                		URL url2 = new URL(detailUrl(ccr_cnnt_sys_ds_cd, bbs_sn));
                		
                		HttpURLConnection conn2 = (HttpURLConnection) url2.openConnection();
                        conn2.setRequestMethod("GET");
                        conn2.setRequestProperty("Accept", "application/json");

                        int code2 = conn2.getResponseCode();
                        if(code2 < 200 || code2 >= 300) {
                            System.out.println("detail 페이지가 잘못되었습니다.");
                            return null;
                        }
                		
                        InputStreamReader isr2 = new InputStreamReader(conn2.getInputStream());
        				BufferedReader br2 = new BufferedReader(isr2);
        				JSONParser parser2 = new JSONParser();
                        Object obj2 = parser2.parse(br2);
                        JSONArray jsonArr3 = (JSONArray)obj2;
                        JSONObject jsonObj2 = (JSONObject)jsonArr3.get(1);
                        
                        String bbs_dtl_cts = "";
                       
                        if(jsonObj2.get("dsBbsInfo") == null) {
                        	bbs_dtl_cts = "내용없음";
                        } else {
                        	JSONArray jsonArr4 = (JSONArray) jsonObj2.get("dsBbsInfo");
                        	
                        	JSONObject deInfo = (JSONObject) jsonArr4.get(0);
                        	bbs_dtl_cts = ((String) deInfo.get("BBS_DTL_CTS"));
                        }

                		ApplyNotice applyNotice = ApplyNotice.builder()
                				.rnum(rnum)
                				.bbs_sn(bbs_sn)
                				.ccr_cnnt_sys_ds_cd(ccr_cnnt_sys_ds_cd)
                				.ais_tp_cd_nm(ais_tp_cd_nm)
                				.bbs_tl(bbs_tl)
                				.dep_nm(dep_nm)
                				.bbs_wou_dttm(bbs_wou_dttm)
                				.link_url(link_url)
                				.bbs_dtl_cts(bbs_dtl_cts)
                				.build();
                		noticeList.add(applyNotice);
                		
                	}
                }
                pageNum++;
			}
		} catch (Exception e) {
			System.out.println("공지상세api 파싱에 문제가 있습니다.");
			e.printStackTrace();
		}
		return noticeList;
	}
	
	
	public static List<ApplyNoticeAttach> callApplyNoticeAttachByJson(String ccr_cnnt_sys_ds_cd1, String bbs_sn1) {
		List<ApplyNoticeAttach> noticeAttach = new ArrayList<>();
		
		try {
			URL url = new URL(detailUrl(ccr_cnnt_sys_ds_cd1, bbs_sn1));
    		
    		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Accept", "application/json");

            int code = conn.getResponseCode();
            if(code < 200 || code >= 300) {
                System.out.println("청약공지 첨부파일 저장이 잘못되었습니다.");
                return null;
            }
            
    		
            InputStreamReader isr = new InputStreamReader(conn.getInputStream());
			BufferedReader br = new BufferedReader(isr);
			
			//-------------------
            StringBuilder sb = new StringBuilder();
            String line = "";
            try {
				while((line = br.readLine()) != null) {
					sb.append(line).append("\n");
				}
			} catch (Exception e) {
				System.out.println("청약공지 첨부파일 test!");
				e.printStackTrace();
			} 
            
            String responseBody = sb.toString();
            
            JSONParser parser = new JSONParser();
            
            Object obj = parser.parse(responseBody);
            //-------------------
			
            JSONArray jsonArr = (JSONArray)obj;
            JSONObject jsonObj = (JSONObject)jsonArr.get(1);
        	
        	String bbs_sn = bbs_sn1;
        	String ccr_cnnt_sys_ds_cd = ccr_cnnt_sys_ds_cd1;
        	String cmn_ahfl_nm = "";
        	String ahfl_url = "";
        	
        	if(jsonObj.get("dsBbsAhflInfo") == null) {
        		cmn_ahfl_nm = "첨부파일 없음";
        		ahfl_url = "첨부파일 없음";
        		
        		ApplyNoticeAttach attach = ApplyNoticeAttach.builder()
    					.bbs_sn(bbs_sn)
    					.ccr_cnnt_sys_ds_cd(ccr_cnnt_sys_ds_cd)
    					.cmn_ahfl_nm(cmn_ahfl_nm)
    					.ahfl_url(ahfl_url)
    					.build();
    			noticeAttach.add(attach);		
    			
        	} else {
        		JSONArray jsonArr2 = (JSONArray) jsonObj.get("dsBbsAhflInfo");
        		
        		if(jsonArr2.size() > 0) {
            		for(int i = 0; i < jsonArr2.size(); i++) {
            			JSONObject attachment = (JSONObject) jsonArr2.get(i);
            			
            			cmn_ahfl_nm = String.valueOf(attachment.get("CMN_AHFL_NM"));
            			ahfl_url = String.valueOf(attachment.get("AHFL_URL"));
            			
            			ApplyNoticeAttach attach = ApplyNoticeAttach.builder()
            					.bbs_sn(bbs_sn)
            					.ccr_cnnt_sys_ds_cd(ccr_cnnt_sys_ds_cd)
            					.cmn_ahfl_nm(cmn_ahfl_nm)
            					.ahfl_url(ahfl_url)
            					.build();
            			noticeAttach.add(attach);		
            		}
            	}
        		
        	}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("청약 공지사항 첨부파일 api 문제!");
		}
		return noticeAttach;
	}
	
	
	public static String detailUrl(String ccr_cnnt_sys_ds_cd, String bbs_sn) {
		StringBuffer url = new StringBuffer();
		url.append(NOTICE_DETAIL_URL);
		url.append("?" + "serviceKey=" + KEY);
		url.append("&" + "CCR_CNNT_SYS_DS_CD=" + ccr_cnnt_sys_ds_cd);
		url.append("&" + "BBS_SN=" + bbs_sn);
//		System.out.println(url);
		
		return url.toString();
	}
	
}
