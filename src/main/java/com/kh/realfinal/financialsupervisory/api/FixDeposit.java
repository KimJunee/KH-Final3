package com.kh.realfinal.financialsupervisory.api;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import lombok.extern.slf4j.Slf4j;

@Slf4j
// 정기예금 API
public class FixDeposit {
	
	public static String Key = "8e90a3481bea63b624725bdad9c42e9a";
	public static String LAND_TERM_XML_URL = "http://finlife.fss.or.kr/finlifeapi/depositProductsSearch.xml";

	public static void main(String[] args) {

		FixDeposit.callLandTermByXML();
		System.out.println("-----------------------------------------");
	}

	public static List<Map<String,Object>>callLandTermByXML() {
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		String[] topFinGrpNo = {"020000", "030200", "030300", "050000", "060000"};
		int pageNo = 1;
		int count = 0;
		for (int i = 0; i < topFinGrpNo.length; i++) {
			System.out.println("topFingrpNo >> " + i);
			String topFinGrp = topFinGrpNo[i];
		
			while (true) {
			
				System.out.println("pageNumber : " + pageNo);
				StringBuilder urlBuilder = new StringBuilder(LAND_TERM_XML_URL); /* URL */
	
				urlBuilder.append("?" + "auth=" + Key); 
				urlBuilder.append("&" + "topFinGrpNo=" + topFinGrp);
				urlBuilder.append("&" + "pageNo=" + pageNo);
				System.out.println(urlBuilder);
	
				try {
					
					URL url = new URL(urlBuilder.toString());
					HttpURLConnection conn = (HttpURLConnection) url.openConnection();
					conn.setRequestMethod("GET");
					conn.setRequestProperty("Accept", "application/xml");
	
					int code = conn.getResponseCode();
					System.out.println("Response code: " + code);
					if (code < 200 || code >= 300) {
						System.out.println("페이지가 잘못되었습니다.");
						return null;
					}
					
					DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
					DocumentBuilder db = dbf.newDocumentBuilder();
					Document doc = db.parse(conn.getInputStream());
					doc.getDocumentElement().normalize();
	
					System.out.println("Root Element : " + doc.getDocumentElement().getNodeName()); 
					System.out.println("=======================" + pageNo + "페이지시작==============================");
	
					NodeList nList = doc.getElementsByTagName("product");
	
					System.out.println("nList.getLength() : " + nList.getLength());
					if (nList.getLength() < 1) {
						break;
					}
					System.out.println("count !! : "+count);
					for (int j = count ; j < count + nList.getLength(); j++) {
						//System.out.println("for J >> "+j);
						//System.out.println("for J >> "+(j - count));
						Node node = nList.item(j-count);
	
						if (node.getNodeType() == Node.ELEMENT_NODE) {
							Map<String,Object> map = new HashMap<String,Object>();
							Element eElement = (Element) node;
							
							map.put("dcls_month", eElement.getElementsByTagName("dcls_month").item(0).getTextContent());
							map.put("fin_co_no", eElement.getElementsByTagName("fin_co_no").item(0).getTextContent());
							map.put("kor_co_nm", eElement.getElementsByTagName("kor_co_nm").item(0).getTextContent());
							map.put("fin_prdt_cd", eElement.getElementsByTagName("fin_prdt_cd").item(0).getTextContent());
							map.put("fin_prdt_nm", eElement.getElementsByTagName("fin_prdt_nm").item(0).getTextContent());
							map.put("join_way", eElement.getElementsByTagName("join_way").item(0).getTextContent());
							map.put("mtrt_int", eElement.getElementsByTagName("mtrt_int").item(0).getTextContent());
							map.put("spcl_cnd", eElement.getElementsByTagName("spcl_cnd").item(0).getTextContent());
							map.put("join_deny", eElement.getElementsByTagName("join_deny").item(0).getTextContent());
							map.put("join_member", eElement.getElementsByTagName("join_member").item(0).getTextContent());
							map.put("etc_note", eElement.getElementsByTagName("etc_note").item(0).getTextContent());
							map.put("max_limit", eElement.getElementsByTagName("max_limit").item(0).getTextContent());
							map.put("dcls_strt_day", eElement.getElementsByTagName("dcls_strt_day").item(0).getTextContent());
							map.put("dcls_end_day", eElement.getElementsByTagName("dcls_end_day").item(0).getTextContent());
							map.put("fin_co_subm_day", eElement.getElementsByTagName("fin_co_subm_day").item(0).getTextContent());
							
							map.put("top_find_grp_no",topFinGrp);
							map.put("fixdeposit_id", j);
							
							NodeList nOption = eElement.getElementsByTagName("option");
							
							List<Map<String,Object>> optionList = new ArrayList<Map<String,Object>>();
							for (int k = 0; k < nOption.getLength(); k++) {
								Node oNode = nOption.item(k);
								if (oNode.getNodeType() == Node.ELEMENT_NODE) {
									Map<String,Object> option = new HashMap<String,Object>();
									Element oElement = (Element) oNode;
									
									option.put("fixdeposit_id",j);
									option.put("intr_rate_type", oElement.getElementsByTagName("intr_rate_type").item(0).getTextContent());
									option.put("intr_rate_type_nm", oElement.getElementsByTagName("intr_rate_type_nm").item(0).getTextContent());
									option.put("save_trm", oElement.getElementsByTagName("save_trm").item(0).getTextContent());
									option.put("intr_rate", oElement.getElementsByTagName("intr_rate").item(0).getTextContent());
									option.put("intr_rate2", oElement.getElementsByTagName("intr_rate2").item(0).getTextContent());
								
									optionList.add(option);
								}
							}
							map.put("optionList",optionList);
							
							//System.out.println(map.toString());
							//log.info("API야!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
							list.add(map);
						}
						
						if(j == count + nList.getLength() - 1 ) {
							count = j+1;
							break;
						}
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
				
				System.out.println("어디지");
				System.out.println("pageNo : " + pageNo);
				if(i != 2) {
					if(pageNo == 1) { //마지막 페이지
						break;
					}
				}else {
					if(pageNo == 3) { //마지막 페이지
						break;
					}
				}
				pageNo++;
			}
		}
		return list;
	}
}