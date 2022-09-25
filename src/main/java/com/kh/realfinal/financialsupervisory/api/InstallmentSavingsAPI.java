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

import com.kh.realfinal.financialsupervisory.model.vo.InstallmentSavings;
import com.kh.realfinal.financialsupervisory.model.vo.InstallmentSavingsOption;

// 적금 API
public class InstallmentSavingsAPI {
	
	public static String Key = "8e90a3481bea63b624725bdad9c42e9a";
	public static String INSTALLMENT_SAVINGS_XML_URL = "http://finlife.fss.or.kr/finlifeapi/savingProductsSearch.xml";

	public static void main(String[] args) {

		InstallmentSavingsAPI.callInstallmentSavingsByXML();
		System.out.println("-----------------------------------------");
	}

	public static List<InstallmentSavings> callInstallmentSavingsByXML() {
		List<InstallmentSavings> list = new ArrayList<>();
		
		String[] topFinGrpNo = {"020000", "030200", "030300", "050000", "060000"};
		int pageNo = 1;
		int count = 0;
		int no = 1;
		for (int i = 0; i < topFinGrpNo.length; i++) {
			System.out.println("topFingrpNo >> " + i);
			String topFinGrp = topFinGrpNo[i];
		
			while (true) {
			
				System.out.println("pageNumber : " + pageNo);
				StringBuilder urlBuilder = new StringBuilder(INSTALLMENT_SAVINGS_XML_URL); /* URL */
	
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
							
							int inssvnId = j;
							String dclsMonth = getStrData(eElement, "dcls_month");
							int finCoNo = getIntData(eElement, "fin_co_no");
							String korCoNm = getStrData(eElement, "kor_co_nm");
							String finPrdtCd = getStrData(eElement, "fin_prdt_cd");
							String finPrdtNm = getStrData(eElement, "fin_prdt_nm");
							String joinWay = getStrData(eElement, "join_way");
							String mtrtInt = getStrData(eElement, "mtrt_int");
							String spclCnd = getStrData(eElement, "spcl_cnd");
							int joinDeny = getIntData(eElement, "join_deny");
							String joinMember = getStrData(eElement, "join_member");
							String etcNote = getStrData(eElement, "etc_note");
							int maxLimit = getIntData(eElement, "max_limit");
							String dclsStrtDay = getStrData(eElement, "dcls_strt_day");
							String dclsEndDay = getStrData(eElement, "dcls_end_day");
							String finCoSubmDay = getStrData(eElement, "fin_co_subm_day");
							
							NodeList nOption = eElement.getElementsByTagName("option");
							
							List<InstallmentSavingsOption> optionList = new ArrayList<>();
							InstallmentSavingsOption installmentOption = null;
							for (int k = 0; k < nOption.getLength(); k++) {
								Node oNode = nOption.item(k);
								if (oNode.getNodeType() == Node.ELEMENT_NODE) {
									Element oElement = (Element) oNode;
									
									int inssvnNo = no; 
									int insId = j;
									String intrRateType = getStrData(oElement, "intr_rate_type");
									String intrRateTypeNm = getStrData(oElement, "intr_rate_type_nm");
									String rsrvType = getStrData(oElement, "rsrv_type");
									String rsrvTypeNm = getStrData(oElement, "rsrv_type_nm");
									int saveTrm = getIntData(oElement, "save_trm");
									double intrRate = getDoubleData(oElement, "intr_rate");
									double intrRate2 = getDoubleData(oElement, "intr_rate2");
									
									installmentOption = new InstallmentSavingsOption(inssvnNo, insId, intrRateType, intrRateTypeNm, rsrvType, rsrvTypeNm, saveTrm, intrRate, intrRate2);
								}
								no++;
								optionList.add(installmentOption);
							}
							System.out.println("옵션리스트!!!!!! : " + optionList.toString());
							InstallmentSavings installment = new InstallmentSavings(inssvnId, dclsMonth, finCoNo, korCoNm, finPrdtCd, finPrdtNm, joinWay, mtrtInt, spclCnd, joinDeny, joinMember, etcNote, maxLimit, dclsStrtDay, dclsEndDay, finCoSubmDay, optionList);
							list.add(installment);
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