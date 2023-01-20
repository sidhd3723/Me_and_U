package com.Me_and_U.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.Me_and_U.project.dao.IBKListDAO;
import com.Me_and_U.project.model.ComBKListVO;
import com.Me_and_U.project.model.MyBKListVO;
import com.Me_and_U.project.model.MyComBKListVO;

@Service
public class BKListService implements IBKListService {
	@Autowired
	@Qualifier("IBKListDAO")
	IBKListDAO dao;
	
	@Override
	public void insertmybkList(String memId, String mybkListWrite) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memId", memId);
		map.put("mybkListWrite", mybkListWrite);

		dao.insertmybkList(map);
	}

	@Override
	public ArrayList<MyBKListVO> myBKListView(String memId) {
		return dao.myBKListView(memId);
	}

	@Override
	public void deletemyBKList(int mybkListNo) {
		dao.deletemyBKList(mybkListNo);
	}

	@Override
	public int checkMyBKLFinished(int mybkListNo, String memId) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mybkListNo", mybkListNo);
		map.put("memId", memId);
		
		return dao.checkMyBKLFinished(map);
	}

	
	@Override 
	public void updateMyBKLFinished(int mybkListNo, String memId) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mybkListNo", mybkListNo); 
		map.put("memId", memId);
	 
		dao.updateMyBKLFinished(map); 
	}

	@Override
	public void comBKListInsert(ComBKListVO combklist) {
		dao.comBKListInsert(combklist);
	}

	@Override
	public ArrayList<ComBKListVO> comBKListView() {
		return dao.comBKListView();
	}

	@Override
	public ComBKListVO detailViewComBKList(int combkListNo) {
		return dao.detailViewComBKList(combkListNo);
	}

	@Override
	public void deletecomBKList(int combkListNo) {
		dao.deletecomBKList(combkListNo);
	}

	@Override
	public ArrayList<MyComBKListVO> mycomBKListView(String memId) {
		return dao.mycomBKListView(memId);
	}

	@Override
	public int checkCombklistInMybkl(int combkListNo, String memId) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("combkListNo", combkListNo);
		map.put("memId", memId);
		
		return dao.checkCombklistInMybkl(map);
	}

	@Override
	public void insertMyComBKList(MyComBKListVO vo) {
		dao.insertMyComBKList(vo);
	}

	@Override
	public void deletemycomBKList(int mycombkListNo) {
		dao.deletemycomBKList(mycombkListNo);
	}

	@Override
	public int checkMyComBKLFinished(int mycombkListNo, String memId) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mycombkListNo", mycombkListNo);
		map.put("memId", memId);
		
		return dao.checkMyComBKLFinished(map);
	}

	@Override
	public void updateMyComBKLFinished(int mycombkListNo, String memId) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mycombkListNo", mycombkListNo); 
		map.put("memId", memId);
	 
		dao.updateMyComBKLFinished(map); 
	}
	 

}
