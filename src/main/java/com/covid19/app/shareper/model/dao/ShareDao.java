package com.covid19.app.shareper.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.covid19.app.shareper.model.dto.Goods;
import com.covid19.app.shareper.model.dto.Pay;
import com.covid19.app.shareper.model.dto.Reply;
import com.covid19.app.shareper.model.dto.Share;
import com.covid19.app.shareper.model.dto.ShareCheering;
import com.covid19.app.shareper.model.dto.ShareFile;
import com.covid19.app.shareper.model.dto.ShareLike;
import com.covid19.app.shareper.model.dto.ShareQna;

import common.util.Paging;

@Repository
public class ShareDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public void insertBoard(Share share) {

		sqlSession.insert("SHARE.shareUpload", share);
	}

	public void insertFile(ShareFile shf) {
		sqlSession.insert("SHARE.insertFile", shf);
	}

	public void insertThumb(Map<String, String> fileInfo) {
		sqlSession.insert("SHARE.insertThumb", fileInfo);
	}

	public int selectContentCnt(String filter) {
		return sqlSession.selectOne("SHARE.selectContentCnt", filter);
	}

	public List<Object> selectshar(Paging p) {

		return sqlSession.selectList("SHARE.selectshar", p);
	}

	public List<Share> sharedetail(int share_idx) {
		return sqlSession.selectList("SHARE.selectDetail", share_idx);
	}

	public void insertGoods(Goods goods) {
		sqlSession.insert("SHARE.insertGoods", goods);
	}

	public int selectContentCnt2(String filter) {
		return sqlSession.selectOne("SHARE.selectContentCnt2", filter);
	}

	public List<Goods> selectGoods(int share_idx) {
		return sqlSession.selectList("SHARE.selectGoods", share_idx);
	}

	public void insertPayment(Pay payy) {
		sqlSession.insert("SHARE.insertpayment", payy);
	}

	public void insertMempoint(Map<String, Object> map) {

		sqlSession.insert("SHARE.insertPoint", map);

	}

	public void insertjoinper(int share_idx) {
		sqlSession.insert("SHARE.insertJoinper", share_idx);

	}

	public void insertDonate(int mem_pay) {
		sqlSession.insert("SHARE.insertDonate", mem_pay);
	}

	// 장바구니에 담기
	public void insertCart(ShareLike like) {
		System.out.println("DAO like" + like);
		sqlSession.insert("SHARE.insertCart", like);
	}

	public List<ShareLike> listCart(String member_id) {
		return sqlSession.selectList("SHARE.listCart", member_id);
	}

	public int sumMoney(String member_id) {
		return sqlSession.selectOne("SHARE.sumMoney", member_id);
	}

	public void deleteCart(int sharelike_id) {
		sqlSession.delete("SHARE.deleteCart", sharelike_id);
	}

	public void deleteAllCart(String member_id) {
		sqlSession.delete("SHARE.deleteAllCart", member_id);

	}

//	public ShareLike detailCart(int sharelike_id) {
//		return sqlSession.selectOne("SHARE.detailCart", sharelike_id);
//	}

	public void modifiyCart(ShareLike vo) {
		sqlSession.update("SHARE.modifiyCart", vo);
	}

	public int countCart(int share_idx, String member_id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("share_idx", share_idx);
		map.put("member_id", member_id);
		return sqlSession.selectOne("SHARE.countCart", map);
	}

	public void updateCart(ShareLike like) {
		sqlSession.update("SHARE.updateCart", like);
	}

	// 상품 조회를 통한 qna 조회 파싱
	// 입력
	public void insertQna(ShareQna qna) {
		sqlSession.insert("SHARE.insertQna", qna);
	}
	// 조회

	public List<ShareQna> listQna(int share_idx, int start, int end) {

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("share_idx", share_idx);
		map.put("start", start);
		map.put("end", end);

		return sqlSession.selectList("SHARE.listQna", map);
	}

	// 전체 게시물 갯수
	public int count(int share_idx) {

		return sqlSession.selectOne("SHARE.count", share_idx);
	}

	// 내용
	public List<ShareQna> readQna(int share_idx) {

		return sqlSession.selectList("SHARE.readQna", share_idx);
	}

	// 게시물 조회
	public ShareQna detailQna(int qno) {
		return sqlSession.selectOne("SHARE.detailQna", qno);
	}

	// 수정
	public void updateQna(ShareQna qna) {
		sqlSession.update("SHARE.updateQna", qna);
	}

	// 삭제
	public void deleteQna(int qno) {
		sqlSession.delete("SHARE.deleteQna", qno);
	}

	// 답변
	// 입력
	public void createReply(Reply vo) {
		sqlSession.insert("SHARE.createReply", vo);

	}

	// 조회
	public List<Reply> listReply(int shareQnaIdx) {
		return sqlSession.selectList("SHARE.listReply", shareQnaIdx);
	}

	// 응원 댓글

	// 입력
	public void insertCheering(ShareCheering ch) {
		System.out.println("DAO" + ch);
		sqlSession.insert("SHARE.insertCheering", ch);

	}

	// 조회
	public List<ShareCheering> listCheering(int share_idx) {
		System.out.println("dao" + share_idx);
		return sqlSession.selectList("SHARE.listCheering", share_idx);
	}

	public List<ShareCheering> readCheering(int share_idx) {
		return sqlSession.selectList("SHARE.listCheering", share_idx);
	}

}
