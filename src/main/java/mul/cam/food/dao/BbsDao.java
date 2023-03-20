package mul.cam.food.dao;

import java.util.List;

import mul.cam.food.dto.BbsDto;
import mul.cam.food.dto.MemberDto;

public interface BbsDao {

	int bbswrite(BbsDto dto);

	List<BbsDto> testlist();

	MemberDto loginAf(MemberDto dto);

	List<MemberDto> bringDelflg(MemberDto dto);

	BbsDto getBbs(int seq);


	
}
