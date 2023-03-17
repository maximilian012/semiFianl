package mul.cam.food.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;

import mul.cam.food.dto.BbsComment;
import mul.cam.food.dto.BbsDto;

public interface BbsService {

	boolean bbswrite(BbsDto dto);
	
	List<BbsDto> getlist();
	
	JsonObject SummerNoteImageFile(MultipartFile file);
	
	BbsDto getBbs(int seq);
	
	boolean commentWrite(BbsComment bbs);
	
	List<BbsComment> commentList(int seq);
	
	boolean updateBbs(BbsDto dto);
	
}
