package smhrd.sbs.model;

public class PlantVO {
	private String plantid;
	private String id;
	private String plantname;
	private String regidate;
	private String picture;
	private String sick;
	private String plantnick;

	public PlantVO() {
	};
	
	

	public PlantVO(String id) {
		this.id = id;
	}



	public PlantVO(String plantid, String id, String plantname, String regidate, String picture, String sick,
			String plantnick) {
		this.plantid = plantid;
		this.id = id;
		this.plantname = plantname;
		this.regidate = regidate;
		this.picture = picture;
		this.sick = sick;
		this.plantnick = plantnick;
	}



	public PlantVO(String regidate, String picture) {
		this.regidate = regidate;
		this.picture = picture;
	}



	public String getPlantid() {
		return plantid;
	}

	public void setPlantid(String plantid) {
		this.plantid = plantid;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPlantname() {
		return plantname;
	}

	public void setPlantname(String plantname) {
		this.plantname = plantname;
	}

	public String getRegidate() {
		return regidate;
	}

	public void setRegidate(String regidate) {
		this.regidate = regidate;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getSick() {
		return sick;
	}

	public void setSick(String sick) {
		this.sick = sick;
	}

	public String getPlantnick() {
		return plantnick;
	}

	public void setPlantnick(String plantnick) {
		this.plantnick = plantnick;
	}

	@Override
	public String toString() {
		return "PlantVO [plantid=" + plantid + ", id=" + id + ", plantname=" + plantname + ", regidate=" + regidate
				+ ", picture=" + picture + ", sick=" + sick + ", plantnick=" + plantnick + "]";
	}

}
