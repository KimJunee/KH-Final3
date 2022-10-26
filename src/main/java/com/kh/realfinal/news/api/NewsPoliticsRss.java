package com.kh.realfinal.news.api;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.kh.realfinal.news.model.vo.News;

public class NewsPoliticsRss {

	public static String XML_URL = "https://rss.donga.com/politics.xml";

	public static void main(String[] args) {
		List<News> list = NewsPoliticsRss.callNewsEconomyRssByXML();
		for (int i = 0; i < list.size(); i++) {
			News news = list.get(i);
			System.out.println(news);
		}
		System.out.println("size : " + list.size());
	}

	public static List<News> callNewsEconomyRssByXML() {
		List<News> list = new ArrayList<News>();

		StringBuilder urlBuilder = new StringBuilder(XML_URL);

		try {
			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", "application/xml");

			int code = conn.getResponseCode();
			System.out.println("Response Code : " + code);
			if (code < 200 || code >= 300) {
				System.out.println("페이지가 잘못되었습니다.");
				return null;
			}

			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document doc = db.parse(conn.getInputStream());

			// root tag
			doc.getDocumentElement().normalize();

			System.out.println("Root Element : " + doc.getDocumentElement().getNodeName());

			NodeList nList = doc.getElementsByTagName("item");
			System.out.println("news 수 : " + nList.getLength());

			for (int i = 1; i < nList.getLength(); i++) {
				Node node = nList.item(i);
//				System.out.println("\nCurrent Element : " + node.getNodeName());

				if (node.getNodeType() == Node.ELEMENT_NODE) {
					Element eElement = (Element) node;

//					int lowNo = Integer.parseInt(eElement.getElementsByTagName("BILL_NO").item(0).getTextContent());
//					String rstProposer = eElement.getElementsByTagName("RST_PROPOSER").item(0).getTextContent();
//					int age = Integer.parseInt(eElement.getElementsByTagName("AGE").item(0).getTextContent());
//					String billName = eElement.getElementsByTagName("BILL_NAME").item(0).getTextContent();
//					String proposer = eElement.getElementsByTagName("PROPOSER").item(0).getTextContent();
//					String committee = eElement.getElementsByTagName("COMMITTEE").item(0).getTextContent();
//					String proposeDt = eElement.getElementsByTagName("PROPOSE_DT").item(0).getTextContent();
//					String procResult = eElement.getElementsByTagName("PROC_RESULT").item(0).getTextContent();
//					String detailLink = eElement.getElementsByTagName("DETAIL_LINK").item(0).getTextContent();

					String title =  eElement.getElementsByTagName("title").item(0).getTextContent();
					String link =  eElement.getElementsByTagName("link").item(0).getTextContent();
					Date pubdate =  new Date(eElement.getElementsByTagName("pubDate").item(0).getTextContent());
					String description =  eElement.getElementsByTagName("description").item(0).getTextContent();
					String image = null;
					try {
						image =  eElement.getElementsByTagName("media:content").item(0).getAttributes().getNamedItem("url").getTextContent();
					} catch (Exception e) {}
					String category = "politics"; 
					News news = new News(0, title, link, pubdate, description, image, category);
					list.add(news);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}