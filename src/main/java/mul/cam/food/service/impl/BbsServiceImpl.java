package mul.cam.food.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mul.cam.food.dao.BbsDao;
import mul.cam.food.dto.BbsComment;
import mul.cam.food.dto.BbsDto;
import mul.cam.food.dto.BbsParam;
//import mul.cam.food.dto.MemberDto;
import mul.cam.food.service.BbsService;

@Service
public class BbsServiceImpl implements BbsService {
	@Autowired
	BbsDao dao;

	@Override
	public BbsDto getBbs(int seq) {		
		return dao.getBbs(seq);
	}

	@Override
	public boolean commentWrite(BbsComment bbs) {
		int n = dao.commentWrite(bbs);
		return n>0?true:false;
	}
}
