package com.Me_and_U.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.Me_and_U.project.dao.IReviewDAO;
import com.Me_and_U.project.model.ReviewVO;
@Service
public class ReviewService implements IReviewService {
	@Autowired
	@Qualifier("IReviewDAO")
	IReviewDAO dao;
	
	
	@Override
	public ArrayList<ReviewVO> listAllReview() {		
		return dao.listAllReview();
	}
	
	@Override
	public ArrayList<ReviewVO> listRecentReview() {
		// 최신순
		return dao.listRecentReview();
	}
	
	@Override
	public void updateReview(ReviewVO review) {
		//수정
		dao.updateReview(review);
	}

	@Override
	public void deleteReview(int reviewNo) {
		
		dao.deleteReview(reviewNo);
		
	}

	
	@Override
	public void insertReview(ReviewVO review) {
		dao.insertReview(review);
	}

	@Override
	public ReviewVO detailViewReview(int reviewNo) {
		return dao.detailViewReview(reviewNo);
	}

	@Override
	public ArrayList<ReviewVO> reviewMypage(String memId) {
		
		return dao.reviewMypage(memId);
	}

	@Override
	public ArrayList<ReviewVO> reviewSearch(HashMap<String, Object> map){
		
		return dao.reviewSearch(map);
	}

	

}
