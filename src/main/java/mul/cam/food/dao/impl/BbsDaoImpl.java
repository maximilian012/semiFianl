package mul.cam.food.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mul.cam.food.dto.BbsComment;
import mul.cam.food.dto.BbsDto;
import mul.cam.food.dao.BbsDao;


@Repository // 저장소
public class BbsDaoImpl implements BbsDao {
	
	@Autowired
	SqlSession session;
	
	String ns = "Bbs.";


	@Override
	public BbsDto getBbs(int seq) {		
		return session.selectOne(ns + "getBbs", seq);
	}
	
	@Override
	public int commentWrite(BbsComment bbs) {		
		return session.insert(ns + "commentWrite", bbs);
	}

	@Override
	public List<BbsComment> commentList(int seq) {
		return session.selectList(ns + "commentList", seq);
	}
	
	@Override
	public int updateBbs(BbsDto dto) {
		return session.update(ns + "updateBbs", dto);
	}
}
	
	


