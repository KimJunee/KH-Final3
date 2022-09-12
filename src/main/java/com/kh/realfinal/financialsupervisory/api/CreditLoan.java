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
// 개인신용대출 API
public class CreditLoan {
	
	public static String Key = "8e90a3481bea63b624725bdad9c42e9a";
	public static String CREDIT_LOAN_XML_URL = "http://finlife.fss.or.kr/finlifeapi/creditLoanProductsSearch.xml";

	public static void main(String[] args) {

		CreditLoan.callCreditLoanByXML();
		System.out.println("-----------------------------------------");
	}

	public static List<Map<String,Object>>callCreditLoanByXML() {
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		String[] topFinGrpNo = {"020000", "030200", "030300", "050000", "060000"};
		int pageNo = 1;
		int count = 0;
		for (int i = 0; i < topFinGrpNo.length; i++) {
			System.out.println("topFingrpNo >> " + i);
			String topFinGrp = topFinGrpNo[i];
		
			while (true) {
			
				System.out.println("pageNumber : " + pageNo);
				StringBuilder urlBuilder = new StringBuilder(CREDIT_LOAN_XML_URL); /* URL */
	
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
							map.put("crdt_prdt_type", eElement.getElementsByTagName("crdt_prdt_type").item(0).getTextContent());
							map.put("crdt_prdt_type_nm", eElement.getElementsByTagName("crdt_prdt_type_nm").item(0).getTextContent());
							map.put("cb_name", eElement.getElementsByTagName("cb_name").item(0).getTextContent());
							map.put("dcls_strt_day", eElement.getElementsByTagName("dcls_strt_day").item(0).getTextContent());
							map.put("dcls_end_day", eElement.getElementsByTagName("dcls_end_day").item(0).getTextContent());
							map.put("fin_co_subm_day", eElement.getElementsByTagName("fin_co_subm_day").item(0).getTextContent());
							
							map.put("top_find_grp_no",topFinGrp);
							map.put("creditloan_id", j);
							
							NodeList nOption = eElement.getElementsByTagName("option");
							
							List<Map<String,Object>> optionList = new ArrayList<Map<String,Object>>();
							for (int k = 0; k < nOption.getLength(); k++) {
								Node oNode = nOption.item(k);
								if (oNode.getNodeType() == Node.ELEMENT_NODE) {
									Map<String,Object> option = new HashMap<String,Object>();
									Element oElement = (Element) oNode;
									
									option.put("creditloan_id",j);
									option.put("crdt_lend_rate_type", oElement.getElementsByTagName("crdt_lend_rate_type").item(0).getTextContent());
									option.put("crdt_lend_rate_type_nm", oElement.getElementsByTagName("crdt_lend_rate_type_nm").item(0).getTextContent());
									option.put("crdt_grad_1", oElement.getElementsByTagName("crdt_grad_1").item(0).getTextContent());
									option.put("crdt_grad_4", oElement.getElementsByTagName("crdt_grad_4").item(0).getTextContent());
									option.put("crdt_grad_5", oElement.getElementsByTagName("crdt_grad_5").item(0).getTextContent());
									option.put("crdt_grad_6", oElement.getElementsByTagName("crdt_grad_6").item(0).getTextContent());
									option.put("crdt_grad_10", oElement.getElementsByTagName("crdt_grad_10").item(0).getTextContent());
									option.put("crdt_grad_11", oElement.getElementsByTagName("crdt_grad_11").item(0).getTextContent());
									option.put("crdt_grad_12", oElement.getElementsByTagName("crdt_grad_12").item(0).getTextContent());
									option.put("crdt_grad_13", oElement.getElementsByTagName("crdt_grad_13").item(0).getTextContent());
									option.put("crdt_grad_avg", oElement.getElementsByTagName("crdt_grad_avg").item(0).getTextContent());
								
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
				if(i != 4) {
					if(pageNo == 1) { //마지막 페이지
						break;
					}
				}else {
					if(pageNo == 4) { //마지막 페이지
						break;
					}
				}
				pageNo++;
			}
		}
		return list;
	}
}