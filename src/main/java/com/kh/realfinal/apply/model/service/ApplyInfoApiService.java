package com.kh.realfinal.apply.model.service;

import com.kh.realfinal.apply.model.vo.ApplyNotice;
import com.kh.realfinal.apply.model.vo.ApplyNoticeAttach;
import com.kh.realfinal.apply.model.vo.AptLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.AptLttotPblancMdl;

public interface ApplyInfoApiService {
	int saveAptLttotService(AptLttotPblancDetail apd);
	
	int saveAptLttotMdlService(AptLttotPblancMdl am);
	
	int saveApplyNoticeService(ApplyNotice an);
	
	int saveApplyNoticeAttachService(ApplyNoticeAttach ana);
}
