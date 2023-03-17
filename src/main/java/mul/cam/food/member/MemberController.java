package mul.cam.food.member;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import mul.cam.food.dto.MemberDto;
import mul.cam.food.service.MemberService;
import mul.cam.food.service.impl.MemberServiceImpl;

@Controller
public class MemberController {
	// service 접근(생성)
	@Autowired
	MemberService service;
	
	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String login() {
	//	System.out.println("MemberController login " + new Date());
		
		return "login";			
	}
	
	@RequestMapping(value = "regi.do", method = RequestMethod.GET)
	public String regi() {
	//	System.out.println("MemberController regi " + new Date());
		
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
	
	
	
	@ResponseBody
	@RequestMapping(value = "idcheck.do", method = RequestMethod.POST)
	public String idcheck(String user_id) {
	//	System.out.println("MemberController idcheck " + new Date());
		
		boolean ok = service.idCheck(user_id);
		if(ok == true) {	// id가 있음
			return "NO";
		}
		
		return "YES";	// id가 없음
	}
	
	@RequestMapping(value = "regiAf.do", method = RequestMethod.POST)
	public String regiAf(Model model, MemberDto dto) {
	//	System.out.println("MemberController regiAf " + new Date());
		
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


	  @RequestMapping(value = "loginAf.do", method = RequestMethod.POST) public
	  	String login(HttpServletRequest req, Model model, MemberDto dto) { //
		  System.out.println("MemberController login " + new Date());
	  
		  MemberDto mem = service.login(dto);
		  String msg = "";
		  if(mem != null) { //login 성공 
			req.getSession().setAttribute("login", mem); //
			req.getSession().setMaxInactiveInterval(60 * 2);	  
			  msg = "LOGIN_OK"; }
		  else { // login 실패 
			  msg = "LOGIN_FAIL"; 
		  }
	  
	  		model.addAttribute("login", msg);
	  
	  	return "message"; 
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
	 
	@RequestMapping(value = "sessionOut.do", method = RequestMethod.GET)
	public String sessionOut(Model model) {
		String sessionOut = "logout";
		
		model.addAttribute("sessionOut", sessionOut);		
		return "message";
	}
}










