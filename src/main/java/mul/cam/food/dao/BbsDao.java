package mul.cam.food.dao;

import mul.cam.food.dto.BbsComment;
import mul.cam.food.dto.BbsDto;


public interface BbsDao {
	
	BbsDto getBbs(int seq);

	int commentWrite(BbsComment bbs);	

}
