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
import com.kh.realfinal.news.model.vo.NewsReply;

@Service
public class NewsServiceImpl implements NewsService {

	@Autowired
	private NewsMapper mapper;

	// 뉴스 DB INSERT
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveNews(News news) {
		return mapper.insertNews(news);
	}

	// 뉴스 목록
	@Override
	public List<News> getNewsList(PageInfo pageInfo, Map<String, String> map) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		Map<String, String> searchMap = new HashMap<String, String>();
		String category = map.get("category");
		searchMap.put("category",category);
		
		String sortForDate = map.get("sortForDate");
		searchMap.put("sortForDate", sortForDate);
		
		String searchKeyword = map.get("searchKeyword");
		searchMap.put("searchKeyword", searchKeyword);
		
		String searchContent = map.get("descriptionKeyword");
		searchMap.put("descriptionKeyword", searchContent);
		
		return mapper.selectNewsList(rowBounds, searchMap);
	}

	// 갯수
	@Override
	public int getNewsCount(Map<String, String> map) {
		Map<String, String> searchMap = new HashMap<String, String>();
		String category = map.get("category");
		searchMap.put("category",category);
		
		String sortForDate = map.get("sortForDate");
		searchMap.put("sortForDate", sortForDate);
		
		String searchKeyword = map.get("searchKeyword");
		searchMap.put("searchKeyword", searchKeyword);
		
		String searchContent = map.get("descriptionKeyword");
		searchMap.put("descriptionKeyword", searchContent);
		
		return mapper.selectNewsCount(searchMap);
	}

	// 상세보기
	@Override
	public News getNews(int no) {
		News news = mapper.selectByNewsByNo(no);
		news.setHit(news.getHit() + 1);
		mapper.updateNewsHit(news);
		return news;
	}
	
	// 댓글 작성
	@Override
	public int saveReply(NewsReply reply) {
		return mapper.insertNewsReply(reply);
	}
	
	// 댓글 수정
	@Override
	public int editReply(NewsReply reply) {
		return mapper.editNewsReply(reply);
	}
		
	// 댓글 삭제
	@Override
	public int deleteReply(int no) {
		return mapper.deleteNewsReply(no);
	}

	// 메인 큰 뉴스 5개
	@Override
	public List<News> getSelectNewsForMainBig() {
		return mapper.selectNewsForMainBig();
	}

	// 메인 카테고리별 뉴스 1개
	@Override
	public List<News> getSelectNewsForMainCategory() {
		return mapper.selectNewsForMainCategory();
	}
}