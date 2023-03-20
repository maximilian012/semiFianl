package mul.cam.food.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import mul.cam.food.dto.BbsComment;
import mul.cam.food.dto.BbsDto;
import mul.cam.food.service.BbsService;



@Controller
public class BbsController {

	@Autowired
	BbsService service;
	
	@GetMapping(value = "mainhome.do")
	public String mainhome(Model model) {
//		System.out.println("MemberController mainhome() " + new Date());	
		
		List<BbsDto> food = service.mainHomegetBbs();
		List<BbsDto> recent = service.recentBbs();

		model.addAttribute("food", food);
		model.addAttribute("recent", recent);
		
		return "mainhome";
	}
		
	
	@GetMapping(value = "bbslist.do")
	public String bbslist(Model model,HttpServletRequest req) {
		List<BbsDto> list = service.getlist();
		
//		String uploadFilePath =req.getServletContext().getRealPath("/thumbnails");
		String uploadFilePath = "./thumbnails";
		model.addAttribute("bbslist", list);
		model.addAttribute("uploadFilePath", uploadFilePath);
		return "bbslist";
	}
		
	
	@GetMapping(value = "bbswrite.do")
	public String bbswrite() {
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
	
//	
//	@PostMapping(value = "bbswriteAF.do")
//	public String bbswriteAf(Model model,
//			@RequestParam("thumbnail") MultipartFile file,
//			@RequestParam("title") String title,
//			@RequestParam("category") int category,
//			@RequestParam("cookingtime") String cookingtime,
//			@RequestParam("serving") String serving,
//			@RequestParam("ingredients") String ingredients,
//			@RequestParam("tag") String tag,
//			@RequestParam("content") String content,
//			@RequestParam("writer") String writer,
//			HttpServletRequest req
//			) {
//		System.out.println("hello");
//		System.out.println("wrtier : " + writer);
//		System.out.println("content : " + content);
//
//		
//		// thumbnail 저장 부분
//
//		String fileRealName = file.getOriginalFilename(); //파일명을 얻어낼 수 있는 메서드!
//		long size = file.getSize(); //파일 사이즈
//		
//		System.out.println("파일명 : "  + fileRealName);
//		System.out.println("용량크기(byte) : " + size);
//		//서버에 저장할 파일이름 fileextension으로 .jsp이런식의  확장자 명을 구함
//		String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."),fileRealName.length());
//		String uploadFolder =req.getServletContext().getRealPath("/thumbnails");
//
//		/*
//		  파일 업로드시 파일명이 동일한 파일이 이미 존재할 수도 있고 사용자가 
//		  업로드 하는 파일명이 언어 이외의 언어로 되어있을 수 있습니다. 
//		  타인어를 지원하지 않는 환경에서는 정산 동작이 되지 않습니다.(리눅스가 대표적인 예시)
//		  고유한 랜던 문자를 통해 db와 서버에 저장할 파일명을 새롭게 만들어 준다.
//		 */
//		
//		UUID uuid = UUID.randomUUID();
//		String[] uuids = uuid.toString().split("-");
//		
//		String uniqueName = uuids[0];
//		
//		// File saveFile = new File(uploadFolder+"\\"+fileRealName); uuid 적용 전
//		String filePath = uploadFolder+"/"+uniqueName + fileExtension;
//		System.out.println(filePath);
//		File saveFile = new File(filePath);  // 적용 후
//		try {
//			BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(saveFile));
//			bos.write(file.getBytes());
//			
//			bos.close();
//		}  catch (Exception e) {
//			// TODO: handle exception
//			System.out.println(e);
//			return "bbswrite";
//		}
//		
//		
//		BbsDto dto = new BbsDto();
//		dto.setCategory(category);
//		dto.setContent(content);
//		dto.setCookingtime(cookingtime);
//		dto.setIngredients(ingredients);
//		dto.setTag(tag);
//		dto.setTitle(title);
//		dto.setWriter(writer);
//		dto.setThumbnail(uniqueName + fileExtension);		
//		dto.setServing(serving);
//		
//		
//		boolean b =  service.bbswrite(dto);
//		String bbswrite = "";
//		if (b) {
//			bbswrite = "writeOK";
//		}else {
//			bbswrite = "writeNO";
//		}
//		model.addAttribute("bbswrite", bbswrite);
//		
//		return "message"; // controller 에서 controller로 이동 redirect:/bbslist.do, forward
//	}

	@ResponseBody
	@RequestMapping(value="search.do" , method = RequestMethod.POST)
	public List<BbsDto> searchBbslist(String searchV) {
		System.out.println(searchV);
		
		List<BbsDto> list = new ArrayList<BbsDto>();
		
		return list;
	}
	
	
	@GetMapping(value = "bbsdetail.do")
	public String bbsdetail(Model model, int seq) {
		System.out.println("BbsController bbsdetail " + new Date());
		BbsDto dto = service.getBbs(seq);
		model.addAttribute("bbsdto", dto);
		
		return "bbsdetail";
	}	
	
	@PostMapping(value = "commentWriteAf.do")
	public String commentWriteAf(BbsComment bbs) {
		System.out.println("BbsController BbsComment " + new Date());
		boolean isS = service.commentWrite(bbs);
		if(isS) {
			System.out.println("댓글작성에 성공했습니다");
		}else {
			System.out.println("댓글작성에 실패했습니다");
		}
		
		return "redirect:/bbsdetail.do?seq=" + bbs.getSeq();
	}
	
	
}
