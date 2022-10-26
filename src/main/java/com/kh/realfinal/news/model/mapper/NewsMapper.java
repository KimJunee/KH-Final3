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
	int updateHit(News news);
	int deleteNewsReply(int no);
}