package mul.cam.food.service;

import mul.cam.food.dto.BbsComment;
import mul.cam.food.dto.BbsDto;

public interface BbsService {

	BbsDto getBbs(int seq);
	
	boolean commentWrite(BbsComment bbs);
	
}
