package mul.cam.food.member;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import mul.cam.food.dto.BbsDto;
import mul.cam.food.dto.BbsParam;
import mul.cam.food.dto.MemberDto;
import mul.cam.food.service.MemberService;


@Controller
public class MemberController {
	
		// service 접근(생성)
		@Autowired
		MemberService service;
		
		@RequestMapping(value = "login.do", method = RequestMethod.GET)
		public String login() {
			return "login";			
		}
		
		@RequestMapping(value = "regi.do", method = RequestMethod.GET)
		public String regi() {
			return "regi";
		}
		
		@RequestMapping(value = "find.do", method = RequestMethod.GET)
		public String find() {
			return "find";
		}
		
		@RequestMapping(value = "find_id.do", method = RequestMethod.GET)
		public String findid() {
			return "find_id";
		}
		
		@RequestMapping(value = "find_id_result.do", method = RequestMethod.GET)
		public String findid_result() {
			return "find_id_result";
		}
		
		@RequestMapping(value = "find_pwd.do", method = RequestMethod.GET)
		public String findpwd() {
			return "find_pwd";
		}
		
		@ResponseBody	// HTTP 응답의 body에 객체를 직렬화하여 넣어주는 역할
		@RequestMapping(value = "idcheck.do", method = RequestMethod.POST)
		public String idcheck(String id) {
			
			boolean ok = service.idCheck(id);
			if(ok == true) {	// id 있음
				return "NO";
			}
			
			return "YES";	// id 없음
		}
		
		@RequestMapping(value = "regiAf.do", method = RequestMethod.POST)
		public String regiAf(Model model, MemberDto dto) {
			
			boolean isS = service.addMember(dto);
			String message = "";
			if(isS) {
				message = "MEMBER_ADD_YES";
			}else {
				message = "MEMBER_ADD_NO";
			}
			model.addAttribute("message", message);
			
			return "message";
		}
		
		@RequestMapping(value = "loginAf.do", method = RequestMethod.POST)
		public String login(HttpServletRequest req, Model model, MemberDto dto) {
			MemberDto mem = service.login(dto);
			String msg = "";
			if(mem != null) {
				req.getSession().setAttribute("login", mem);	// "login"이란 이름으로 mem 저장	
				req.getSession().setMaxInactiveInterval(60 * 60 * 2);
			
				msg = "LOGIN_OK";
			}else {
				msg = "LOGIN_FAIL";
			}
			model.addAttribute("login", msg); // model에 로그인 결과 전달
			
			return "message";	// message View로 반환
		}
		
		// 아이디 찾기
		// @ResponseBody
		@RequestMapping(value = "find_id_Af.do", method = RequestMethod.POST)
		public String find_id(Model model, String email){
			System.out.println("MemberController find_id_Af.do " + new Date());
			System.out.println("email:" + email);
			
			String id = service.find_id(email);
			model.addAttribute("find_id", id);
			return "find_id_result";
		} 
		
		// 패스워드 찾기
		@RequestMapping(value = "find_pwd_Af.do", method = RequestMethod.POST)
		public String find_pwd(Model model, String email){
			System.out.println("MemberController find_id_Af.do " + new Date());
			System.out.println("email:" + email);
			
			String id = service.find_id(email);
			model.addAttribute("find_id", id);
			return "find_id_result";
		} 
		
		// 세션 만료 시,(기본 30분)
		@RequestMapping(value = "sessionOut.do", method = RequestMethod.GET)
		public String sessionOut(Model model) {
			System.out.println("MemberController sessionOut " + new Date());
			String sessionOut = "logout";
			
			model.addAttribute("sessionOut", sessionOut);
			return "message";
		}
		
		
		// 230320 추가 
		
		// 나의 정보, 내가 쓴글  가져오기 
		@RequestMapping(value = "setting.do", method= RequestMethod.GET)
		public String setting(Model model, HttpServletRequest req, BbsParam param) {
			
			MemberDto login = (MemberDto) req.getSession().getAttribute("login");
			
			MemberDto myData = service.getMydata(login);
			List<BbsDto> myRecipe = service.getMyrecipe(login);
			
//			System.out.println( "test myData "+myData);
//			System.out.println("test myRecipe "+myRecipe);
						
			model.addAttribute("myData", myData);	 // 나의 정보		
			model.addAttribute("myRecipe", myRecipe); // 내가 쓴 게시판 정보
			
			return "setting";
		}
		
		
		
} 
