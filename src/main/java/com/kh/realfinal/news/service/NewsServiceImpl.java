package com.kh.realfinal.news.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.news.model.mapper.NewsMapper;
import com.kh.realfinal.news.model.vo.News;

@Service
public class NewsServiceImpl implements NewsService {

	@Autowired
	private NewsMapper mapper;
	

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveNews(News news) {
		return mapper.insertNews(news);
	}

	@Override
	public List<News> getNewsList(PageInfo pageInfo, Map<String, String> map) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		Map<String, String> searchMap = new HashMap<String, String>();
		
		return mapper.selectNewsList(rowBounds, searchMap);
	}

	@Override
	public int getNewsCount(Map<String, String> map) {
		Map<String, String> searchMap = new HashMap<String, String>();
		return mapper.selectNewsCount(searchMap);
	}

	@Override
	public News getNews(int no) {
		return mapper.selectByNewsByNo(no);
	}
}