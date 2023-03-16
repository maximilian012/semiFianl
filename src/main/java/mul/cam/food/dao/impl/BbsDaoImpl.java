package mul.cam.food.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mul.cam.food.dao.BbsDao;
import mul.cam.food.dto.BbsDto;
import mul.cam.food.dto.MemberDto;


@Repository // 저장소
public class BbsDaoImpl implements BbsDao {

	@Autowired
	SqlSession session;
	
	String ns = "BbsFoodList.";
	@Override
	public int bbswrite(BbsDto dto) {
		
		return session.insert(ns + "bbswrite", dto);
	}
	@Override
	public List<BbsDto> testlist() {
		
		return session.selectList(ns + "testlist");
	}
	@Override
	public MemberDto loginAf(MemberDto dto) {
		
		return  session.selectOne(ns + "loginAf", dto);
	}

	@Override
	public int writeBbs(BbsDto food) {		
		return session.insert(ns + "writeBbs", food);
	}
	
	

}
