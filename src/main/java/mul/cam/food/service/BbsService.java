package mul.cam.food.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;

import mul.cam.food.dto.BbsDto;
import mul.cam.food.dto.MemberDto;

public interface BbsService {

	boolean bbswrite(BbsDto dto);

	List<BbsDto> testlist();

	MemberDto loginAf(MemberDto dto);

	List<MemberDto> bringDelflg(MemberDto dto);

	BbsDto getBbs(int seq);


	
	
	
}
