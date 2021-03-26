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
	public int memberInsert(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt = session.insert("memberInsert", vo);
		session.commit();
		session.close();
		return cnt;
	}

	@Override
	public MemberVO memberCheck(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		MemberVO loginVO = session.selectOne("memberCheck", vo);
		session.close();
		return loginVO;
	}

	@Override
	public int memberUpdate(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		int cnt = session.update("memberUpdate", vo);
		return cnt;
	}

	@Override
	public int memberDelete(int num) {

		return 0;
	}

	@Override
	public MemberVO memberRead(MemberVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

}
