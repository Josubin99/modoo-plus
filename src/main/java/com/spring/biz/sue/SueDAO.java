package com.spring.biz.sue;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository("sueDAO")
public class SueDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	// 신고하기
	final String INSERT_SUE = "INSERT INTO SUE (BNUM, MNUM, SCNUM, SDATE) VALUES(?, ?, ?, SYSDATE())";
	// 신고 취소
	final String UPDATE_SUE = "UPDATE SUE SET SRESULT=1,SRDATE=SYSDATE() WHERE SNUM=?";
	// 신고글 총합
	final String COUNT_SUE = "SELECT COUNT(B.BNUM) AS ACNT, COUNT(CASE WHEN SRESULT='0' THEN 1 END) AS NCNT, COUNT(CASE WHEN SRESULT='1' THEN 1 END) AS CCNT FROM MEMBER M, BOARD B, SUE S WHERE M.MNUM = B.MNUM AND B.BNUM = S.BNUM";
	// 신고글 목록
	final String SELECTALL_SUE = "SELECT S.SNUM, B.BTITLE, M.MID, M.MIMG, S.SDATE, S.SRESULT FROM MEMBER M, BOARD B, SUE S WHERE M.MNUM = B.MNUM AND B.BNUM = S.BNUM ORDER BY S.SNUM ASC";
	// 신고글 목록(처리, 미처리)
	final String SELECTALL_RESULT = "SELECT S.SNUM, S.MNUM, S.BNUM, B.BTITLE, M.MID, M.MIMG, B.BWDATE, B.BSTATUS, S.SRESULT, S.SDATE FROM SUE S, BOARD B, MEMBER M WHERE S.SRESULT=? AND S.BNUM = B.BNUM AND S.MNUM = M.MNUM";
	// 신고글 내용
	final String SELECTONE_SUE = "SELECT * FROM (SELECT S.MNUM, MID, BNUM FROM MEMBER M JOIN SUE S ON S.MNUM = M.MNUM) A, (SELECT S.SNUM, S.BNUM, B.MNUM AS SMNUM, SRDATE, B.BTITLE, M.MID AS SMID, B.BCONTENT, SC.SCNAME, B.BWDATE, S.SDATE, S.SRESULT, M.SCORE, M.MSTATUS, B.BSTATUS, M.MIMG  FROM BOARD B JOIN SUE S ON B.BNUM=S.BNUM JOIN SUECATEGORY SC ON S.SCNUM=SC.SCNUM JOIN MEMBER M ON M.MNUM =B.MNUM )B WHERE A.BNUM=B.BNUM AND A.MNUM != B.SMNUM AND SNUM=?";
	// 신고하기 카테고리
	final String SELECTALL_SUECA = "SELECT * FROM SUECATEGORY";
	// 신고당한 사람에게 이메일 전송
	final String SELECT_EMAIL = "SELECT SNUM, SCNAME, SMNUM, MNUM FROM SUE S JOIN SUECATEGORY SC ON S.SCNUM = SC.SCNUM WHERE SNUM=?";

	public boolean insertSue(SueVO svo) {
		try {
			jdbcTemplate.update(INSERT_SUE, svo.getbNum(), svo.getmNum(), svo.getScNum());
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean updateSue(SueVO svo) {
		try {
			jdbcTemplate.update(UPDATE_SUE, svo.getsNum());
		} catch (DataAccessException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public List<SueCategoryVO> selectAllSueCa(SueCategoryVO svo) {
		List<SueCategoryVO> datas = new ArrayList<SueCategoryVO>();
		try {
			datas = jdbcTemplate.query(SELECTALL_SUECA, (rs, rowNum) -> {
				SueCategoryVO tmpData = new SueCategoryVO();
				tmpData.setScNum(rs.getInt("SCNUM"));
				tmpData.setScName(rs.getString("SCNAME"));
				return tmpData;
			});
		} catch (Exception e) {
			e.printStackTrace();
		}
		return datas;
	}

	public SueVO selectCount(SueVO svo) {
		return jdbcTemplate.queryForObject(COUNT_SUE, new SueCountRowMapper());
	}

	public List<SueVO> selectAllSue(SueVO svo) {
		List<SueVO> datas = new ArrayList<SueVO>();
		try {
			if (svo.getsResult() != null) {
				System.out.println("sResult = " + svo.getsResult());
				datas = jdbcTemplate.query(SELECTALL_RESULT, new SueRowMapper(), svo.getsResult());
			} else {
				datas = jdbcTemplate.query(SELECTALL_SUE, new SueRowMapper());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("datas = " + datas);
		return datas;
	}

	public SueVO selectOneSue(SueVO svo) {
		try {
			return jdbcTemplate.queryForObject(SELECTONE_SUE, new SelectOneRowMapper(), svo.getsNum());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public SueVO selectEmail(SueVO svo) {
		try {
			return jdbcTemplate.queryForObject(SELECT_EMAIL, new SueEmailRowMapper());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}

class SueEmailRowMapper implements RowMapper<SueVO> {
	@Override
	public SueVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		SueVO data = new SueVO();
		data.setsNum(rs.getInt("SNUM"));
		data.setScName(rs.getString("SCNAME"));
		data.setSmNum(rs.getInt("SMNUM"));
		data.setmNum(rs.getInt("MNUM"));
		return data;
	}
}

class SueCountRowMapper implements RowMapper<SueVO> {
	@Override
	public SueVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		SueVO data = new SueVO();
		data.setaCnt(rs.getInt("ACNT"));
		data.setnCnt(rs.getInt("NCNT"));
		data.setcCnt(rs.getInt("CCNT"));
		return data;
	}
}

class SueRowMapper implements RowMapper<SueVO> {
	@Override
	public SueVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		SueVO data = new SueVO();
		data.setsNum(rs.getInt("SNUM"));
		data.setbTitle(rs.getString("BTITLE"));
		data.setmId(rs.getString("MID"));
		data.setmImg(rs.getString("MIMG"));
		data.setsDate(rs.getTimestamp("SDATE"));
		data.setsResult(rs.getString("SRESULT"));
		return data;
	}
}

class SelectOneRowMapper implements RowMapper<SueVO> {
	@Override
	public SueVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		SueVO data = new SueVO();
		data.setsNum(rs.getInt("SNUM"));
		data.setbNum(rs.getInt("BNUM"));
		data.setmNum(rs.getInt("MNUM"));
		data.setbTitle(rs.getString("BTITLE"));
		data.setmId(rs.getString("MID"));
		data.setbContent(rs.getString("BCONTENT"));
		data.setScName(rs.getString("SCNAME"));
		data.setbWdate(rs.getTimestamp("BWDATE"));
		data.setsDate(rs.getTimestamp("SDATE"));
		data.setsResult(rs.getString("SRESULT"));
		data.setScore(rs.getInt("SCORE"));
		data.setmStatus(rs.getString("MSTATUS"));
		data.setbStatus(rs.getString("BSTATUS"));
		data.setSmNum(rs.getInt("SMNUM"));
		data.setSmId(rs.getString("SMID"));
		data.setSrDate(rs.getTimestamp("SRDATE"));
		data.setmImg(rs.getString("MIMG"));
		return data;
	}

}
