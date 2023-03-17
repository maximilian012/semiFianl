package mul.cam.food.service;

import java.util.List;

import mul.cam.food.dto.BbsComment;
import mul.cam.food.dto.BbsDto;

public interface BbsService {

	BbsDto getBbs(int seq);
	
	boolean commentWrite(BbsComment bbs);
	
	List<BbsComment> commentList(int seq);
	
	boolean updateBbs(BbsDto dto);
	
}
