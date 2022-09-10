package com.kh.realfinal.exchangerate.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ExchangeRate {
	
	private String dollar;  //달러(원)
	private String yuan;  //위안(원)
	private String date;  //일자(년월일)
						
}
