package Model;

import java.sql.Date;

public class ChiTietHoatDongModel
{
	public String ID_HD ;
	public String TenDuLieu ;
	public String NoiDungDuLieu ;
	public String Link_DuLieu ;
	public String LoaiDulieu ;
	public Date NgayNhap ;
	public String IDNhanVien ;
	
	public ChiTietHoatDongModel()
	{
		
	}

	public ChiTietHoatDongModel(String iD_HD, String tenDuLieu, String noiDungDuLieu, String link_DuLieu,
			String loaiDulieu, Date ngayNhap, String iDNhanVien)
	{
		ID_HD = iD_HD;
		TenDuLieu = tenDuLieu;
		NoiDungDuLieu = noiDungDuLieu;
		Link_DuLieu = link_DuLieu;
		LoaiDulieu = loaiDulieu;
		NgayNhap = ngayNhap;
		IDNhanVien = iDNhanVien;
	}

	public String getID_HD()
	{
		return ID_HD;
	}

	public void setID_HD(String iD_HD)
	{
		ID_HD = iD_HD;
	}

	public String getTenDuLieu()
	{
		return TenDuLieu;
	}

	public void setTenDuLieu(String tenDuLieu)
	{
		TenDuLieu = tenDuLieu;
	}

	public String getNoiDungDuLieu()
	{
		return NoiDungDuLieu;
	}

	public void setNoiDungDuLieu(String noiDungDuLieu)
	{
		NoiDungDuLieu = noiDungDuLieu;
	}

	public String getLink_DuLieu()
	{
		return Link_DuLieu;
	}

	public void setLink_DuLieu(String link_DuLieu)
	{
		Link_DuLieu = link_DuLieu;
	}

	public String getLoaiDulieu()
	{
		return LoaiDulieu;
	}

	public void setLoaiDulieu(String loaiDulieu)
	{
		LoaiDulieu = loaiDulieu;
	}

	public Date getNgayNhap()
	{
		return NgayNhap;
	}

	public void setNgayNhap(Date ngayNhap)
	{
		NgayNhap = ngayNhap;
	}

	public String getIDNhanVien()
	{
		return IDNhanVien;
	}

	public void setIDNhanVien(String iDNhanVien)
	{
		IDNhanVien = iDNhanVien;
	}
	
}
