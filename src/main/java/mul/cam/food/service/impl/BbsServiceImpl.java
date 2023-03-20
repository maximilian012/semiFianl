package mul.cam.food.service.impl;

import java.io.File;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;

import mul.cam.food.dao.BbsDao;
import mul.cam.food.dto.BbsComment;
import mul.cam.food.dto.BbsDto;
import mul.cam.food.dto.MemberDto;
import mul.cam.food.service.BbsService;

@Service
public class BbsServiceImpl implements BbsService {

	@Autowired
	BbsDao dao;
	
	@Override
	public List<BbsDto> mainHomegetBbs() {
		return dao.mainHomegetBbs();
	}

	@Override
	public List<BbsDto> recentBbs() {
		return dao.recentBbs();
	}

	@Override
	public boolean bbswrite(BbsDto dto) {
		int cnt = dao.bbswrite(dto);

		return cnt > 0 ? true : false;
	}

	@Override
	public List<BbsDto> getlist() {
		
		return dao.getlist();
	}



	/*
	 * @Override public JsonObject SummerNoteImageFile(MultipartFile file) {
	 * 
	 * JsonObject jsonObject = new JsonObject(); String fileRoot =
	 * "C:\\summernoteImg\\"; String originalFileName = file.getOriginalFilename();
	 * String extension =
	 * originalFileName.substring(originalFileName.lastIndexOf("."));
	 * 
	 * String saveFileName = UUID.randomUUID()+extension;
	 * 
	 * File targetFile = new File(fileRoot+saveFileName);
	 * 
	 * try { InputStream fileStream = file.getInputStream();
	 * FileUtils.copyInputStreamToFile(fileStream, targetFile);
	 * jsonObject.addProperty("url", "/summernoteImg/"+saveFileName);
	 * jsonObject.addProperty("responseCode", "succcess"); } catch(IOException e) {
	 * FileUtils.deleteQuietly(targetFile); jsonObject.addProperty("responseCode",
	 * "error"); e.printStackTrace(); } return jsonObject;
	 * 
	 * }
	 */


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
