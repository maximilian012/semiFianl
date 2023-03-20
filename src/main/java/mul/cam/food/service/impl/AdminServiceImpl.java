package mul.cam.food.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mul.cam.food.dao.AdminDao;
import mul.cam.food.dto.AdminParam;
import mul.cam.food.dto.BbsComment;
import mul.cam.food.dto.BbsDto;
import mul.cam.food.dto.MemberDto;
import mul.cam.food.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	
	@Autowired
	AdminDao dao;
	
	@Override
	public List<MemberDto> getAdminList(AdminParam param) {
		
		return dao.getAdminList(param);
	}

	@Override
	public int getAllAdmin(AdminParam param) {
		return dao.getAllAdmin(param);
	
	}

	@Override
	public boolean adminDel(String seq) {
		
		int cnt = dao.adminDel(seq);
		
		return cnt > 0 ? true:false;
	}

	@Override
	public MemberDto getInfo(String id) {
		
		return dao.getInfo(id);
	}



	@Override
	public List<BbsDto> getListCnt(String user_id) {
		
		return dao.getListCnt(user_id);
	}

	@Override
	public List<BbsComment> getComentCnt(String user_id) {
		
		return dao.getComentCnt(user_id);
	}

	@Override
	public void delfUp(String writer) {

		dao.delfUp(writer);
	}

	
}
