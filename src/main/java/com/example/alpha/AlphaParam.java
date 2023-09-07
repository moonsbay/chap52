package com.example.alpha;

import lombok.Getter;

@Getter
public class AlphaParam {
	String line;
	String column;
	
	public void setLine(String value){
		if(value==null) {
			throw new RuntimeException("line은 NULL이면 안됩니다");
		}
		if(value.trim()=="") {
			throw new RuntimeException("line은 널 스트링이면 안됩니다");
		}
		
		int line;
		try {
			line = Integer.parseInt(value);
		}catch(Exception e) {
			throw new RuntimeException("line을 수치로 변환할 수 없습니다 line ="+ value);
		}
		if(line<0) {
			throw new RuntimeException("line은 0이상이어야 합니다 line="+ value);
		}
		if(line>100) {
			throw new RuntimeException("line은 100이하의 값이어야 합니다 line="+ value);
		}
		
		this.line = value;
	}
	
	public void setColumn(String value){
		if(value==null) {
			throw new RuntimeException("Column은 NULL이면 안됩니다");
		}
		if(value.trim()=="") {
			throw new RuntimeException("Column은 널 스트링이면 안됩니다");
		}
		int column;
		try {
		column = Integer.parseInt(value);
		}catch(Exception e) {
			throw new RuntimeException("Column을 수치로 변환할 수 없습니다 column ="+ value);
		}
		if(column<0) {
			throw new RuntimeException("Column은 0이상이어야 합니다 column="+ value);
		}
		if(column>100) {
			throw new RuntimeException("Column은 100이하의 값이어야 합니다 column="+ value);
		}
		this.column = value;
	}

}
