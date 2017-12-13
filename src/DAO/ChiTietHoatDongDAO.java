package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Connect.GetConnection;
import Model.ChiTietHoatDongModel;

public class ChiTietHoatDongDAO
{
	GetConnection conn = new GetConnection();
	public ArrayList<ChiTietHoatDongModel> gestchitiethoatdong(String id_hd) throws SQLException
	{
		Connection connection = conn.Connection();
		String sql = "select *from chitiethoatdong where ID_HD='"+id_hd+"'";
		PreparedStatement pst = connection.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		ArrayList<ChiTietHoatDongModel> listchitiethoatdong = new ArrayList<>();
		while(rs.next())
		{
			ChiTietHoatDongModel cthd = new ChiTietHoatDongModel();
			cthd.setID_HD(rs.getString(1));
			cthd.setTenDuLieu(rs.getString(2));
			cthd.setNoiDungDuLieu(rs.getString(3));
			cthd.setLink_DuLieu(rs.getString(4));
			cthd.setLoaiDulieu(rs.getString(5));
			cthd.setNgayNhap(rs.getDate(6));
			cthd.setIDNhanVien(rs.getString(7));
			listchitiethoatdong.add(cthd);
		}
		return listchitiethoatdong ;
	}
}
