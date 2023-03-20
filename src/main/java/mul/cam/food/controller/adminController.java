package mul.cam.food.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import mul.cam.food.dto.AdminParam;
import mul.cam.food.dto.BbsComment;
import mul.cam.food.dto.BbsDto;
import mul.cam.food.dto.MemberDto;
import mul.cam.food.service.AdminService;

@Controller
public class adminController {

	@Autowired
	AdminService service;
	@GetMapping(value = "adminList.do")
	public String adminList(Model model, AdminParam param) {
		
		//글의 시작과 끝
				int pn = param.getPageNumber(); // 0,1,2,3,4
				int start = 1 + (pn * 10);
				int end = (pn + 1) * 10; // 10,20,30,40...
				
				param.setStart(start);
				param.setEnd(end);
				
				
				List<MemberDto> list = service.getAdminList(param);
				
				int len = service.getAllAdmin(param);
				
				int pageAdmin = len / 10; // 25 / 10 -> 2
				if ((len % 10) > 0) {
					pageAdmin = pageAdmin + 1;
				}
				
				
				if (param.getChoice() == null || param.getChoice().equals("") || param.getSearch() == null
						|| param.getSearch().equals("")) {
				
					param.setChoice("검색");
					param.setSearch("");;
				}
				
				model.addAttribute("adminList", list); // 게시판 리스트
				model.addAttribute("choice", param.getChoice()); // 검색
				model.addAttribute("search", param.getSearch()); // 
				model.addAttribute("pageAdmin", pageAdmin);
				model.addAttribute("pageNumber", param.getPageNumber());// 현재 페이지
		
		return "adminList";
	}
	
	@GetMapping(value = "adminDel.do")
	public String bbsdelete(String seq, Model model, String writer) { // 여기 seq는 MemberDto의 seq
		
		System.out.println("이름은??????" + writer);
		boolean b = service.adminDel(seq);
		
		service.delfUp(writer);
		String delete = "";
		if (b) {
			delete = "deleteOK";
		} else {
			delete = "deleteNO";
		}
		model.addAttribute("delete", delete);
		
		return "message";
	}
	// 아이디 모달
	@ResponseBody
	@PostMapping(value = "getuserInfo.do")
	public MemberDto getuserInfo(String user_id) {
		
		System.out.println("유저 인포 아작스");
		
		MemberDto dto = service.getInfo(user_id);
		
		return dto;
	}
	// 게시글 모달
	@ResponseBody
	@PostMapping(value = "getListCnt.do")
	public List<BbsDto> getListCnt(String user_id) {
		
		System.out.println("getListCnt 아작스");
		
		List<BbsDto> dtos = service.getListCnt(user_id);
		System.out.println("fwejfeowifewiofj나오냐?????????" + dtos);
		return dtos;
	}
	// 댓글 모달
	@ResponseBody
	@PostMapping(value = "getComentCnt.do")
	public List<BbsComment> getComentCnt(String user_id) {
		
		System.out.println("getComentCnt 아작스");
		
		List<BbsComment> dtos = service.getComentCnt(user_id);
		return dtos;
	}
}
