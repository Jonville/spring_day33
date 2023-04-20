package com.example.test1.dao;

import java.util.HashMap;
import java.util.List;

import com.example.test1.model.Bbs;
import com.example.test1.model.Board;

public interface BbsService {
	
	List<Bbs> searchBbsList(HashMap<String, Object> map) throws Exception;

}
