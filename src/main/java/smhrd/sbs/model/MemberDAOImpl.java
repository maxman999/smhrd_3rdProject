package smhrd.sbs.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSessionFactory sqlSessionFactory;

	@Override
	public List<MemberVO> memberList() {
		SqlSession session = sqlSessionFactory.openSession();
		List<MemberVO> list = session.selectList("memberList");
		session.close();
		return list;
	}

	@Override
	public int memberCreate(MemberVO vo) {
		return 0;
	}

	@Override
	public MemberVO memberRead(int num) {
		return null;
	}

	@Override
	public int memberUpdate(MemberVO vo) {
		return 0;
	}

	@Override
	public int memberDelete(int num) {
		return 0;
	}

}
