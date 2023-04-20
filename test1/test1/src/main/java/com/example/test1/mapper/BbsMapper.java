package com.example.test1.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.test1.model.Bbs;


@Mapper		
public interface BbsMapper {
	
	// 조회
	List<Bbs> selectBbsList(HashMap<String, Object> map) throws Exception; 
	
	
	
}
