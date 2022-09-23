package com.kh.realfinal.financialsupervisory.api;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.kh.realfinal.financialsupervisory.model.vo.MortgageLoan;
import com.kh.realfinal.financialsupervisory.model.vo.MortgageLoanOption;

public class MortgageLoanAPI {
	
	public static String Key = "8e90a3481bea63b624725bdad9c42e9a";
	public static String INSTALLMENT_SAVINGS_XML_URL = "http://finlife.fss.or.kr/finlifeapi/mortgageLoanProductsSearch.xml";
	
	public static void main(String[] args) {
		MortgageLoanAPI.callInstallmentSavingsByXML();
	}
	
	public static List<MortgageLoan> callInstallmentSavingsByXML(){
		List<MortgageLoan> list = new ArrayList<MortgageLoan>();
		
		String[] topFinGrpNo = {"020000", "030200", "030300", "050000", "060000"};
		int pageNo = 1;
		int count = 0;
		int no = 1;
		
		for(int i = 0; i < topFinGrpNo.length; i++) {
			String topFinGrp = topFinGrpNo[i];
			
			while(true) {
				System.out.println("pageNumber : " + pageNo);
				StringBuilder urlBuilder = new StringBuilder(INSTALLMENT_SAVINGS_XML_URL);
	
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
					System.out.println("count : " + count);
					
					for (int j = count ; j < count + nList.getLength(); j++) {

						Node node = nList.item(j-count);
						
						if (node.getNodeType() == Node.ELEMENT_NODE) {
							Element eElement = (Element) node;
							
							int mortgageId = j;
							int dclsMonth = getIntData(eElement, "dcls_month");
							int finCoNo = getIntData(eElement, "fin_co_no");
							String korCoNm = getStrData(eElement, "kor_co_nm");
							String finPrdtCd = getStrData(eElement, "fin_prdt_cd");
							String finPrdtNm = getStrData(eElement, "fin_prdt_nm");
							String joinWay = getStrData(eElement, "join_way");
							String loanInciExpn = getStrData(eElement, "loan_inci_expn");
							String erlyRpayFee = getStrData(eElement, "erly_rpay_fee");
							String dlyRate = getStrData(eElement, "dly_rate");
							String loanLmt = getStrData(eElement, "loan_lmt");
							String dclsStrtDay = getStrData(eElement, "dcls_strt_day");
							String dclsEndDay = getStrData(eElement, "dcls_end_day");
							String finCoSubmDay = getStrData(eElement, "fin_co_subm_day");
							
							NodeList nOption = eElement.getElementsByTagName("option");
							
							List<MortgageLoanOption> optionList = new ArrayList<>();
							MortgageLoanOption mortgageOption = null;
							for (int k = 0; k < nOption.getLength(); k++) {
								Node oNode = nOption.item(k);
								if (oNode.getNodeType() == Node.ELEMENT_NODE) {
									Element oElement = (Element) oNode;
									
									int mrtgNo = no;
									int mrtgId = j;
									String mrtgType = getStrData(oElement, "mrtg_type");
									String mrtgTypeNm = getStrData(oElement, "mrtg_type_nm");
									String rpayType = getStrData(oElement, "rpay_type");
									String rpayTypeNm = getStrData(oElement, "rpay_type_nm");
									String lendRateType = getStrData(oElement, "lend_rate_type");
									String lendRateTypeNm = getStrData(oElement, "lend_rate_type_nm");
									double lendRateMin = getDoubleData(oElement, "lend_rate_min");
									double lendRateMax = getDoubleData(oElement, "lend_rate_max");
									double lendRateAvg = getDoubleData(oElement, "lend_rate_avg");
									
									mortgageOption = new MortgageLoanOption(mrtgNo, mrtgId, mrtgType, mrtgTypeNm, rpayType, rpayTypeNm, lendRateType, lendRateTypeNm, lendRateMin, lendRateMax, lendRateAvg);
								}
								no++;
								optionList.add(mortgageOption);
							}
							System.out.println("옵션리스트!!!!!! : " + optionList.toString());
							MortgageLoan mortgage = new MortgageLoan(mortgageId, dclsMonth, finCoNo, korCoNm, finPrdtCd, finPrdtNm, joinWay, loanInciExpn, erlyRpayFee, dlyRate, loanLmt, dclsStrtDay, dclsEndDay, finCoSubmDay, optionList);
							list.add(mortgage);
							if(j == count + nList.getLength() - 1 ) {
								count = j+1;
								break;
							}						
						}
					}
					
				} catch (Exception e) {
					e.printStackTrace();
				}
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
//		System.out.println("전체 리스트!!!!!!!!!! : " + list.toString());
		return list;
	}
	
	private static String getStrData(Element eElement, String tagName) {
		try {
			return eElement.getElementsByTagName(tagName).item(0).getTextContent();
		} catch (Exception e) {
			return "-";
		}
	}

	private static int getIntData(Element oElement, String tagName) {
		try {
			return Integer.parseInt(oElement.getElementsByTagName(tagName).item(0).getTextContent());
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
