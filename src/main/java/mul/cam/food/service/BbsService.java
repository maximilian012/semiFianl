package mul.cam.food.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;

import mul.cam.food.dto.BbsComment;
import mul.cam.food.dto.BbsDto;
import mul.cam.food.dto.BbsParam;

public interface BbsService {

	List<BbsDto> mainHomegetBbs();
	
	List<BbsDto> recentBbs();
	
	boolean bbswrite(BbsDto dto);

	List<BbsDto> getlist();

//	JsonObject SummerNoteImageFile(MultipartFile file);

	BbsDto getBbs(int seq);
	
	boolean commentWrite(BbsComment bbs);
	
	// 추가
	List<BbsDto> getSearchList(BbsParam param);
}
