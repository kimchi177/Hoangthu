package Model;

public class PhongBanModel
{
public String id_phongban ;
	
	public String tenphongban;

	public PhongBanModel(String id_phongban, String tenphongban)
	{
		this.id_phongban = id_phongban;
		this.tenphongban = tenphongban;
	}
	public PhongBanModel()
	{
		
	}
	public String getId_phongban()
	{
		return id_phongban;
	}

	public void setId_phongban(String id_phongban)
	{
		this.id_phongban = id_phongban;
	}

	public String getTenphongban()
	{
		return tenphongban;
	}

	public void setTenphongban(String tenphongban)
	{
		this.tenphongban = tenphongban;
	}
}
