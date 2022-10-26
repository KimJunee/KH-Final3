package com.kh.realfinal.politics.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.realfinal.politics.model.vo.CardCut;
import com.kh.realfinal.politics.model.vo.CardCutReply;

@Mapper
public interface CardCutMapper {

	int insertCardCut(CardCut cardCut);
	List<CardCut> selectCardCut(RowBounds rowBounds, Map<String, String> param);
	List<CardCut> selectCardCutList(RowBounds rowBounds, Map<String, String> param);
	int selectCardCutCount(Map<String, String> param);
	CardCut selectCardCutOne(int cardCutNo); //게시글 누르면 해당 게시글 상세기 나오게! 그리고 댓글도 같이 나옴
	
	
	
	int insertCardCutreply(CardCutReply cCreply);//게시글insert
	int editCardCutReply(CardCutReply cCreply);
	int updateCardCutReply(CardCutReply cCreply); //댓글 update?
	int deleteCardCutReply(int no);//댓글삭제
	List<CardCut> selectCardCutList1(); //그냥 리스트 뽑는거
}


