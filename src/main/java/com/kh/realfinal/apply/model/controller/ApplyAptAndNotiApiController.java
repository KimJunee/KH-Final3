package com.kh.realfinal.apply.model.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.apply.api.ApplyNoticeApi;
import com.kh.realfinal.apply.api.AptLttotPblancDetailApi;
import com.kh.realfinal.apply.model.service.ApplyInfoService;
import com.kh.realfinal.apply.model.vo.ApplyNotice;
import com.kh.realfinal.apply.model.vo.ApplyNoticeAttach;
import com.kh.realfinal.apply.model.vo.AptLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.AptLttotPblancMdl;

@Controller
public class ApplyAptAndNotiApiController {

	@Autowired
	private ApplyInfoService service;
	
	
	@RequestMapping("/Aptdetail/insert.do")
	public String initAptLttotPblancDetail(Model model) {
		List<AptLttotPblancDetail> list1 = AptLttotPblancDetailApi.callSubInfoByJson();
		
		int result1 = 0;
		int result2 = 0;
		for(AptLttotPblancDetail apt : list1) {
			result1 = service.saveAptLttotService(apt);
			
			List<AptLttotPblancMdl> list2 = AptLttotPblancDetailApi
					.aptDetailParsing(apt.getHouse_manage_no(), apt.getPblanc_no());
			for(AptLttotPblancMdl am : list2) {
				result2 = service.saveAptLttotMdlService(am);
			}
		}
		
		if(result1 > 0) {
			model.addAttribute("msg", "APT분양정보 저장성공");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "분양정보 저장 실패!!");
			model.addAttribute("location", "/");
		}
		
		if(result2 > 0) {
			model.addAttribute("msg", "APT분양정보 주택형별 저장성공");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "APT분양정보 주택형별 저장 실패!!");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
	}
	
	
	@RequestMapping("/applyNotice/insert.do")
	public String initApplyNotice(Model model) {
		List<ApplyNotice> list1 = ApplyNoticeApi.callApplyNoticeByJson();
		
		int result1 = 0;
		int result2 = 0;
		
		for(ApplyNotice noti : list1) {
			result1 = service.saveApplyNoticeService(noti);
			
			List<ApplyNoticeAttach> list2 = 
					ApplyNoticeApi.callApplyNoticeAttachByJson(noti.getCcr_cnnt_sys_ds_cd(), noti.getBbs_sn());
			for(ApplyNoticeAttach attach : list2) {
				result2 = service.saveApplyNoticeAttachService(attach);
			}
		}
		
		if(result1 > 0) {
			model.addAttribute("msg", "청약공지사항 저장 성공");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "청약공지사항 저장 실패!!!");
			model.addAttribute("location", "/");
		}
		
		if(result2 > 0) {
			model.addAttribute("msg", "청약공지 첨부파일 저장 성공");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "청약공지 첨부파일 저장 실패!!!");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
	}
	
	
	
}
