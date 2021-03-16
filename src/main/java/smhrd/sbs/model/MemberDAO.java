package smhrd.sbs.model;

import java.util.List;

public interface MemberDAO {
	
	public List<MemberVO> memberList();
	public int memberCreate(MemberVO vo);
	public MemberVO memberRead(int num);
	public int memberUpdate(MemberVO vo);
	public int memberDelete(int num);
}