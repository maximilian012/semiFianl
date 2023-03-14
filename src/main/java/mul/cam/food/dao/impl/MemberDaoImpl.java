package mul.cam.food.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mul.cam.food.dao.MemberDao;
import mul.cam.food.dto.MemberDto;

@Repository 
public class MemberDaoImpl implements MemberDao {

	@Autowired  
	SqlSession session;
	
	String ns = "Member.";
	
	@Override
	public List<MemberDto> allMember() {						
		return session.selectList(ns + "allMember");
	}
	
	@Override
	public int idCheck(String user_id) {
		return session.selectOne(ns + "idcheck", user_id);
	}
	
	@Override
	public int addMember(MemberDto dto) {
		return session.insert(ns + "addmember", dto);
	}
	
	@Override
	public MemberDto login(MemberDto dto) {
		MemberDto mem = session.selectOne(ns + "login", dto);
		return mem;
	}
	
	
}




