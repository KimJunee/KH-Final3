package com.kh.realfinal.news.service;

import java.util.List;
import java.util.Map;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.news.model.vo.News;
import com.kh.realfinal.news.model.vo.NewsReply;

public interface NewsService {
	String economyStr = "economy"; 
	String nationalStr = "national"; 
	String politicsStr = "politics"; 
	String opinionStr = "opinion"; 
	
	int saveNews(News news);
	List<News> getNewsList(PageInfo pageinfo, Map<String, String> map);
	int getNewsCount(Map<String, String> map);
	News getNews(int no);
	int saveReply(NewsReply reply);
	int editReply(NewsReply reply);
	int deleteReply(int no);
	
	List<News> getSelectNewsForMainBig();
	List<News> getSelectNewsForMainCategory();
}