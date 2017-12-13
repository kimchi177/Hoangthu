package Model;

import java.sql.Date;

public class PhongDaoTaoModel
{
	public String id_hoatdong;
	public String tenhoatdong;
	public String noidung;
	public Date ngaynhap;
	public String IDNhanVien;
	public String Id_LinhVuc;
	public String IdPB;
	public PhongDaoTaoModel(String id_hoatdong, String tenhoatdong, String noidung, Date ngaynhap, String iDNhanVien,
			String id_LinhVuc, String idPB, String imagehd)
	{
		super();
		this.id_hoatdong = id_hoatdong;
		this.tenhoatdong = tenhoatdong;
		this.noidung = noidung;
		this.ngaynhap = ngaynhap;
		IDNhanVien = iDNhanVien;
		Id_LinhVuc = id_LinhVuc;
		IdPB = idPB;
		this.imagehd = imagehd;
	}
	public String imagehd ;
		
	public String getIDNhanVien()
	{
		return IDNhanVien;
	}
	public void setIDNhanVien(String iDNhanVien)
	{
		IDNhanVien = iDNhanVien;
	}
	public String getId_LinhVuc()
	{
		return Id_LinhVuc;
	}
	public void setId_LinhVuc(String id_LinhVuc)
	{
		Id_LinhVuc = id_LinhVuc;
	}
	public String getIdPB()
	{
		return IdPB;
	}
	public void setIdPB(String idPB)
	{
		IdPB = idPB;
	}
	public Date getNgaynhap()
	{
		return ngaynhap;
	}
	public void setNgaynhap(Date ngaynhap)
	{
		this.ngaynhap = ngaynhap;
	}
	public PhongDaoTaoModel()
	{
		
	}
	public String getId_hoatdong()
	{
		return id_hoatdong;
	}
	public void setId_hoatdong(String id_hoatdong)
	{
		this.id_hoatdong = id_hoatdong;
	}
	public String getTenhoatdong()
	{
		return tenhoatdong;
	}
	public void setTenhoatdong(String tenhoatdong)
	{
		this.tenhoatdong = tenhoatdong;
	}
	public String getNoidung()
	{
		return noidung;
	}
	public void setNoidung(String noidung)
	{
		this.noidung = noidung;
	}
	public String getImagehd()
	{
		return imagehd;
	}
	public void setImagehd(String imagehd)
	{
		this.imagehd = imagehd;
	}
}
