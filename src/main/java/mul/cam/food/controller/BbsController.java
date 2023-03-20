package mul.cam.food.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;

import mul.cam.food.dto.BbsDto;
import mul.cam.food.dto.MemberDto;
import mul.cam.food.service.BbsService;



@Controller
public class BbsController {

	@Autowired
	BbsService service;

	@GetMapping(value = "bbslist.do")
	public String bbslist(Model model, String auth, MemberDto dto) {
		
		dto.setAuth(auth);
		List<BbsDto> list = service.testlist();
		//List<MemberDto> mdto = service.bringDelflg(dto);
		System.out.println("auth야 나오니? " + dto.getAuth());
		model.addAttribute("testlist", list); // 게시판 리스트
		model.addAttribute("dto", dto);	
		return "testlist";
	}
	
	
	
	@GetMapping(value = "bbswrite.do")
	public String bbswrite(String auth) {
		//System.out.println("맨처음 auth: " + auth);
		return "bbswrite";
	}
	
	@PostMapping(value = "bbswriteAF.do")
	public String bbswriteAf(Model model, BbsDto dto) {
		
		System.out.println("wrtier : " + dto.getWriter());
		System.out.println("content : " + dto.getContent());
		System.out.println("thumbnail : " + dto.getThumbnail());
		boolean b =  service.bbswrite(dto);
		String bbswrite = "";
		if (b) {
			bbswrite = "writeOK";
		}else {
			bbswrite = "writeNO";
		}
		model.addAttribute("bbswrite", bbswrite);
		
		return "message"; // controller 에서 controller로 이동 redirect:/bbslist.do, forward
	}
	
	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String login() {
		
		
		return "login";
	}
	
	@RequestMapping(value = "loginAf.do", method = RequestMethod.POST)
	public String loginAf(HttpServletRequest req, MemberDto dto, Model model) {
		
		MemberDto mem = service.loginAf(dto);
		
		String loginOK = "";
		if (mem != null&& !mem.getDelflg().equals("0")) {
			 req.getSession().setAttribute("login", mem);
			// req.getSession().setMaxInactiveInterval(60 * 60 * 60 * 60);
			 
			 loginOK = "BBS_ADD_OK"; // 로그인 성공
			
		}else if(mem != null && mem.getDelflg().equals("0")) {
			
			 loginOK = "Withdrawal member";
			 
		}else {
			
			loginOK = "BBS_ADD_NO";
		}
		model.addAttribute("loginOK", loginOK);
		
		model.addAttribute("mem", mem);
		
	
		return "message";
	}
	
	@GetMapping(value = "bbsdetail.do")
	public String bbsdetail(Model model, int seq) {
		System.out.println("BbsController bbsdetail " + new Date());
		BbsDto dto = service.getBbs(seq);
		model.addAttribute("bbsdto", dto);
		
		return "bbsdetail";
	}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@ResponseBody
	@RequestMapping(value="/uploadSummernoteImageFile", method = RequestMethod.POST)
	public String uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile) {
		
		JsonObject jsonObject = new JsonObject();
		
		String fileRoot = "C:\\summernote_image\\";	//저장될 외부 파일 경로
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
				
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
		
		File targetFile = new File(fileRoot + savedFileName);
		System.out.println("fileRoot : " + fileRoot);
		System.out.println("savedFileName : " + savedFileName);
		
		
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
			jsonObject.addProperty("url", "/summernoteImage/"+savedFileName);
			jsonObject.addProperty("responseCode", "success");
				
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		String a = jsonObject.toString();
		return a;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
