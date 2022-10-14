package com.kh.realfinal.financialsupervisory.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.realfinal.financialsupervisory.model.vo.InstallmentSavings;
import com.kh.realfinal.financialsupervisory.model.vo.InstallmentSavingsOption;

@Mapper
public interface InstallmentSavingsMapper {
	int insertInstallmentSavings(InstallmentSavings install);
	int insertInstallmentSavingsOption(InstallmentSavingsOption options);
	
	List<InstallmentSavings> selectInstallList(RowBounds rowBounds, Map<String, String> map);
	List<InstallmentSavings> selectInstallList();
	int selectInstallCount(Map<String, String> map);
	InstallmentSavings selectByInssvnId(int inssvnId);
	
}