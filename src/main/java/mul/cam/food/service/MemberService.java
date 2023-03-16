package mul.cam.food.service;

import java.util.List;

import mul.cam.food.dto.MemberDto;

public interface MemberService {

	List<MemberDto> allMember();
	
	boolean idCheck(String user_id);
	
	boolean addMember(MemberDto dto);
	
	MemberDto login(MemberDto dto);

}
