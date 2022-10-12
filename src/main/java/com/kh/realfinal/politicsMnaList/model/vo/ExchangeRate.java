package com.kh.realfinal.politicsMnaList.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ExchangeRate {
	
	private Double dollar;  //달러(원)
	private Double yuan;  //위안(원)
	private String theDate;  //일자(년월일)
						
}
