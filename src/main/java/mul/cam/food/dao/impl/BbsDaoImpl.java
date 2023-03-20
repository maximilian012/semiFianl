package mul.cam.food.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mul.cam.food.dao.BbsDao;
import mul.cam.food.dto.BbsComment;
import mul.cam.food.dto.BbsDto;


@Repository // 저장소
public class BbsDaoImpl implements BbsDao {

	@Autowired
	SqlSession session;
	
	String ns = "Bbs.";	

	@Override
	public List<BbsDto> mainHomegetBbs() {
		return session.selectList(ns + "mainHomegetBbs");
	}

	@Override
	public List<BbsDto> recentBbs() {
		return session.selectList(ns + "recentBbs");
	}

	@Override
	public int bbswrite(BbsDto dto) {
		
		return session.insert(ns + "bbswrite", dto);
	}
	@Override
	public List<BbsDto> getlist() {
		
		return session.selectList(ns + "getlist");
	}

	@Override
	public BbsDto getBbs(int seq) {		
		return session.selectOne(ns + "getBbs", seq);
	}
	
	@Override
	public int commentWrite(BbsComment bbs) {		
		return session.insert(ns + "commentWrite", bbs);
	}

	
	

}
