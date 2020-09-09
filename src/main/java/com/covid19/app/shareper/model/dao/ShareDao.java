package com.covid19.app.shareper.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.covid19.app.shareper.model.dto.Goods;
import com.covid19.app.shareper.model.dto.Share;
import com.covid19.app.shareper.model.dto.ShareFile;
import com.covid19.app.shareper.model.dto.Thumb;

import common.util.Paging;

@Repository
public class ShareDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	public void insertBoard(Share share) {
		
		sqlSession.insert("SHARE.shareUpload", share);
	}


	public void insertFile(ShareFile shf) {
		sqlSession.insert("SHARE.insertFile",shf);
	}


	public void insertThumb(Map<String,String> fileInfo) {
		sqlSession.insert("SHARE.insertThumb" , fileInfo);
	}
	public int selectContentCnt(String filter) {
		return sqlSession.selectOne("SHARE.selectContentCnt",filter);
	}


	public List<Object> selectshar(Paging p) {

		return sqlSession.selectList("SHARE.selectshar",p);
	}


	public List<Share> sharedetail(int share_idx) {
		return sqlSession.selectList("SHARE.selectDetail", share_idx);
	}


	public void insertGoods(Goods goods) {
		sqlSession.insert("SHARE.insertGoods", goods);
	}

	public int selectContentCnt2(String filter) {
		return sqlSession.selectOne("SHARE.selectContentCnt2",filter);
	}









	
	
	
	
}
