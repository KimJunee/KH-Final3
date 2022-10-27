package com.kh.realfinal.news.model.mapper;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;
import com.kh.realfinal.news.model.vo.News;
import com.kh.realfinal.news.model.vo.NewsReply;

@Mapper
public interface NewsMapper {
	int insertNews(News news);
	List<News> selectNewsList(RowBounds rowBounds, Map<String, String> map);
	int selectNewsCount(Map<String, String> map);
	News selectByNewsByNo(int no);
	
	int updateNewsHit(News news);
	int insertNewsReply(NewsReply reply);
	int editNewsReply(NewsReply reply);
	int updateHit(News newsNo);
	int deleteNewsReply(int no);
	
	public List<News> selectNewsForMainBig();		// 메인 큰사진 5개 출력
	public List<News> selectNewsForMainCategory();	// 메인 각 카테고리별 1개 출력
}