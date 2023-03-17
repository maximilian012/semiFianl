package mul.cam.food.controller;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import mul.cam.food.dto.BbsComment;
import mul.cam.food.dto.BbsDto;
import mul.cam.food.service.BbsService;


@Controller
public class BbsController {

	@Autowired
	BbsService service;
	
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
	
	@ResponseBody
	@GetMapping(value = "commentList.do")
	public List<BbsComment> commentList(int seq) {
		List<BbsComment> list = service.commentList(seq);
		return list;
	}
	
	@GetMapping(value = "bbsupdate.do")
	public String bbsupdate(Model model, int seq) {
		BbsDto dto = service.getBbs(seq);
		model.addAttribute("dto", dto);
		
		return "bbsupdate";
	}
	
	@GetMapping(value = "bbsupdateAf.do")
	public String bbsupdateAf(Model model, BbsDto dto) {
		System.out.println(dto.toString());
		boolean isS = service.updateBbs(dto);
		
		String bbsupdate = "BBS_UPDATE_OK";
		if(!isS) {			
			bbsupdate = "BBS_UPDATE_NG";
		}
		model.addAttribute("bbsupdate", bbsupdate);
		model.addAttribute("seq", dto.getSeq());
		
		return "message";
	}
	
}
