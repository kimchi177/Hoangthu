package Model;

public class AnhPhongBanModel
{
	public String IDNhanVien;
	public String Id_Anh ;
	public String TenAnh ;
	public String Link;
	public String IdPB ;
	
	public AnhPhongBanModel()
	{
		
	}

	public AnhPhongBanModel(String iDNhanVien, String id_Anh, String tenAnh, String link, String idPB)
	{
		super();
		IDNhanVien = iDNhanVien;
		Id_Anh = id_Anh;
		TenAnh = tenAnh;
		Link = link;
		IdPB = idPB;
	}

	public String getIDNhanVien()
	{
		return IDNhanVien;
	}

	public void setIDNhanVien(String iDNhanVien)
	{
		IDNhanVien = iDNhanVien;
	}

	public String getId_Anh()
	{
		return Id_Anh;
	}

	public void setId_Anh(String id_Anh)
	{
		Id_Anh = id_Anh;
	}

	public String getTenAnh()
	{
		return TenAnh;
	}

	public void setTenAnh(String tenAnh)
	{
		TenAnh = tenAnh;
	}

	public String getLink()
	{
		return Link;
	}

	public void setLink(String link)
	{
		Link = link;
	}

	public String getIdPB()
	{
		return IdPB;
	}

	public void setIdPB(String idPB)
	{
		IdPB = idPB;
	}
	
}
