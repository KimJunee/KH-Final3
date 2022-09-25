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

import com.kh.realfinal.financialsupervisory.model.vo.CreditLoan;
import com.kh.realfinal.financialsupervisory.model.vo.CreditLoanOption;

// 개인신용대출 API
public class CreditLoanAPI {
	
	public static String Key = "8e90a3481bea63b624725bdad9c42e9a";
	public static String CREDIT_LOAN_XML_URL = "http://finlife.fss.or.kr/finlifeapi/creditLoanProductsSearch.xml";

	public static void main(String[] args) {

		CreditLoanAPI.callCreditLoanByXML();
		System.out.println("-----------------------------------------");
	}

	public static List<CreditLoan> callCreditLoanByXML() {
		List<CreditLoan> list = new ArrayList<>();
		String[] topFinGrpNo = {"020000", "030200", "030300", "050000", "060000"};
		int pageNo = 1;
		int count = 0;
		int no = 1;
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
						Node node = nList.item(j-count);
	
						if (node.getNodeType() == Node.ELEMENT_NODE) {
							Element eElement = (Element) node;
							
							int creditId = j;
							String dclsMonth = getStrData(eElement, "dcls_month");
							int finCoNo = getIntData(eElement, "fin_co_no");
							String korCoNm = getStrData(eElement, "kor_co_nm");
							String finPrdtCd = getStrData(eElement, "fin_prdt_cd");
							String finPrdtNm = getStrData(eElement, "fin_prdt_nm");
							String joinWay = getStrData(eElement, "join_way");
							int crdtPrdtType = getIntData(eElement, "crdt_prdt_type");
							String crdtPrdtTypeNm = getStrData(eElement, "crdt_prdt_type_nm");
							String cbName = getStrData(eElement, "cb_name");
							String dclsStrtDay = getStrData(eElement, "dcls_strt_day");
							String dclsEndDay = getStrData(eElement, "dcls_end_day");
							String finCoSubmDay = getStrData(eElement, "fin_co_subm_day");
										
							NodeList nOption = eElement.getElementsByTagName("option");
							
							List<CreditLoanOption> optionList = new ArrayList<>();
							CreditLoanOption creditOption = null;
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
								
									int creditNo = no;	               
									int creId = j;               
									String crdtLendRateType = getStrData(eElement, "crdt_lend_rate_type");
									String crdtLendTypeNm = getStrData(eElement, "crdt_lend_rate_type_nm");
									double crdtGrad1 = getDoubleData(eElement, "crdt_grad_1");	       
									double crdtGrad4 = getDoubleData(eElement, "crdt_grad_4");	       
									double crdtGrad5 = getDoubleData(eElement, "crdt_grad_5");	       
									double crdtGrad6 = getDoubleData(eElement, "crdt_grad_6");	       
									double crdtGrad10 = getDoubleData(eElement, "crdt_grad_10");       
									double crdtGrad11 = getDoubleData(eElement, "crdt_grad_11");	       
									double crdtGrad12 = getDoubleData(eElement, "crdt_grad_12");	       
									double crdtGrad13 = getDoubleData(eElement, "crdt_grad_13");       
									double crdtGradAvg = getDoubleData(eElement, "crdt_grad_avg");	
									
									creditOption = new CreditLoanOption(creditNo, creId, crdtLendRateType, crdtLendTypeNm, crdtGrad1, crdtGrad4, crdtGrad5, crdtGrad6, crdtGrad10, crdtGrad11, crdtGrad12, crdtGrad13, crdtGradAvg);
								}
								no++;
								optionList.add(creditOption);
							}
							CreditLoan creditLoan = new CreditLoan(creditId, dclsMonth, finCoNo, korCoNm, finPrdtCd, finPrdtNm, joinWay, crdtPrdtType, crdtPrdtTypeNm, cbName, dclsStrtDay, dclsEndDay, finCoSubmDay, optionList);
							list.add(creditLoan);
							if(j == count + nList.getLength() - 1 ) {
								count = j+1;
								break;
							}
						}
						
						if(j == count + nList.getLength() - 1 ) {
							count = j+1;
							break;
						}
					}
				} catch (Exception e) {
					e.printStackTrace();
				}

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
	
	private static String getStrData(Element eElement, String tagName) {
		try {
			return eElement.getElementsByTagName(tagName).item(0).getTextContent();
		} catch (Exception e) {
			return "-";
		}
	}

	private static int getIntData(Element eElement, String tagName) {
		try {
			return Integer.parseInt(eElement.getElementsByTagName(tagName).item(0).getTextContent());
		} catch (Exception e) {
			return 0;
		}
	}
	
	private static double getDoubleData(Element eElement, String tagName) {
		try {
			return Double.parseDouble(eElement.getElementsByTagName(tagName).item(0).getTextContent());
		} catch (Exception e) {
			return 0;
		}
	}
}