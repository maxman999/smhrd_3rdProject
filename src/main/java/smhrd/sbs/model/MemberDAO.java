package smhrd.sbs.model;

import java.util.List;

public interface MemberDAO {
	
	public List<MemberVO> memberList();
	public int memberInsert(MemberVO vo);
	public MemberVO memberRead(String id);
	public int memberUpdate(MemberVO vo);
	public int memberDelete(int num);
}