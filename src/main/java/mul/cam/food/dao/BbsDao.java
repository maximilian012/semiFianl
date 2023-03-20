package mul.cam.food.dao;

import java.util.List;

import mul.cam.food.dto.BbsComment;
import mul.cam.food.dto.BbsDto;
import mul.cam.food.dto.BbsParam;

public interface BbsDao {

	
	List<BbsDto> mainHomegetBbs(); // 메인홈페이지 평점순 
	
	List<BbsDto> recentBbs(); 	// 메인홈페이지 최신순
	
	int bbswrite(BbsDto dto);

	List<BbsDto> getlist();
	
	BbsDto getBbs(int seq);

	int commentWrite(BbsComment bbs);	
	
	// 여기서 부터 추가 
	
	// searchList
	List<BbsDto> getSearchlist(BbsParam param);
}
