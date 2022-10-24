package com.kh.realfinal.opinion.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Opinion {
	
	private int opinionNo;
	private String title;
	private String link; 
	private String imageUrl;
	private String columnist;
	private String content;
	private Date pubDate;

}
