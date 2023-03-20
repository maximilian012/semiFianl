package mul.cam.food.dao;

import java.util.List;

import mul.cam.food.dto.AdminParam;
import mul.cam.food.dto.BbsComment;
import mul.cam.food.dto.BbsDto;
import mul.cam.food.dto.MemberDto;

public interface AdminDao {

	List<MemberDto> getAdminList(AdminParam param);

	int getAllAdmin(AdminParam param);

	int adminDel(String seq);

	MemberDto getInfo(String id);

	List<BbsDto> getListCnt(String user_id);

	List<BbsComment> getComentCnt(String user_id);

	void delfUp(String writer);

	
}
