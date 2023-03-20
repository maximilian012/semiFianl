package mul.cam.food.service;

import java.util.List;

import mul.cam.food.dto.MemberDto;

public interface MemberService {

	List<MemberDto> allMember();
	
	boolean idCheck(String id);
	boolean addMember(MemberDto dto);
	MemberDto login(MemberDto dto);
	String find_id(String email);
	String find_pwd(String email);
	
}
