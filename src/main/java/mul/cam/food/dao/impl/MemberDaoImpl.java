package mul.cam.food.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mul.cam.food.dao.MemberDao;
import mul.cam.food.dto.BbsDto;
import mul.cam.food.dto.MemberDto;

@Repository // 저장소
public class MemberDaoImpl implements MemberDao{

	// MyBatis 접근(생성)
	@Autowired  // 자동생성
	SqlSession session;
	
	String ns = "Member.";
	
	@Override
	public List<MemberDto> allMember() {						
		return session.selectList(ns + "allMember");
	}

	@Override
	public int idCheck(String id) {		
		return session.selectOne(ns + "idcheck", id);
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
	
	@Override
	public String find_id(String email) {
		return session.selectOne(ns + "find_id", email);
	}
	
	@Override
	public String find_pwd(String email) {
		return session.selectOne(ns + "find_pwd", email);
	}

	@Override
	public MemberDto getMydata(MemberDto dto) {
		return session.selectOne( ns + "getMydata", dto);
	}

	@Override
	public List<BbsDto> getMyrecipe(MemberDto dto) {
		return session.selectList(ns + "getMyrecipe", dto);
	}
	
}
