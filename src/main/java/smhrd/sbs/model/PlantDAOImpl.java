package smhrd.sbs.model;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PlantDAOImpl implements PlantDAO {

	@Autowired
	private SqlSessionFactory sqlSessionFactory;

	@Override
	public List<PlantVO> plantList() {
		return null;
	}

	@Override
	public int plantInsert(PlantVO vo) {
		return 0;
	}

	@Override
	public PlantVO plantRead(PlantVO vo) {
		return null;
	}

	@Override
	public int plantDelete(int pid) {
		return 0;
	}

	@Override
	public int plantUpdate(PlantVO vo) {
		return 0;
	}

}
