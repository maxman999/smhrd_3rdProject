package smhrd.sbs.model;

import java.util.List;

public interface PlantDAO {
	
	public List<PlantVO> plantList();
	public int plantInsert(PlantVO vo);
	public PlantVO plantRead(PlantVO vo);
	public int plantDelete(int pid);
	public int plantUpdate(PlantVO vo);
	
}
