package mul.cam.food.controller;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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
	
}
