package mul.cam.food.service.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mul.cam.food.dao.BbsDao;
import mul.cam.food.dto.BbsDto;
import mul.cam.food.dto.MemberDto;
import mul.cam.food.service.BbsService;

@Service
public class BbsServiceImpl implements BbsService {

	@Autowired
	BbsDao dao;
	
	@Override
	public boolean bbswrite(BbsDto dto) {
		int cnt = dao.bbswrite(dto);

		return cnt > 0 ? true : false;
	}

	@Override
	public List<BbsDto> testlist() {
		
		return dao.testlist();
	}

	@Override
	public MemberDto loginAf(MemberDto dto) {
		
		return dao.loginAf(dto);
	}

	@Override
	public List<MemberDto> bringDelflg(MemberDto dto) {
		
		return dao.bringDelflg(dto);
	}

	@Override
	public BbsDto getBbs(int seq) {
		
		return dao.getBbs(seq);
	}






}
