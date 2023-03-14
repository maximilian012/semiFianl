package mul.cam.food.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mul.cam.food.dao.MemberDao;
import mul.cam.food.dto.MemberDto;
import mul.cam.food.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDao dao;
	
	@Override
	public List<MemberDto> allMember() {
		return dao.allMember();

	}
	
	@Override
	public boolean idCheck(String id) {
		int count = dao.idCheck(id);
		return count>0?true:false;
	}
	
	@Override
	public boolean addMember(MemberDto dto) {
		int count = dao.addMember(dto);
		return count>0?true:false;
	}
	
	@Override
	public MemberDto login(MemberDto dto) {
		return dao.login(dto);
	}
	
	
}
