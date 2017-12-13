package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Connect.GetConnection;
import Model.PhongDaoTaoModel;

public class PhongDaoTaoDAO
{
	GetConnection conn = new GetConnection();
	public ArrayList<PhongDaoTaoModel> dsHoatDongPhongDaoTaoPanelTrai (String id_pb) throws SQLException
	{
		Connection connection = conn.Connection();
		String sql = "SELECT * FROM web_qlbc.hoatdong hd where IdPB='"+id_pb+"' ORDER BY hd.NgayNhap limit 3";
		PreparedStatement pst = connection.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		ArrayList<PhongDaoTaoModel> listphongdaotaopaneltrai = new ArrayList<>();
		while(rs.next())
		{
			PhongDaoTaoModel phongdaotao = new PhongDaoTaoModel();
			phongdaotao.setId_hoatdong(rs.getString(1));
			phongdaotao.setTenhoatdong(rs.getString(2));
			phongdaotao.setNoidung(rs.getString(3));
			phongdaotao.setNgaynhap(rs.getDate(4));
			phongdaotao.setImagehd(rs.getString(8));
			listphongdaotaopaneltrai.add(phongdaotao);
		}
		return listphongdaotaopaneltrai ;
	}
	
	public ArrayList<PhongDaoTaoModel> dsHoatDongPhongDaoTaoPanelPhai (String id_pb) throws SQLException
	{
		Connection connection = conn.Connection();
		String sql = "SELECT * FROM web_qlbc.hoatdong hd where IdPB='"+id_pb+"' ORDER BY hd.NgayNhap limit 3,3";
		PreparedStatement pst = connection.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		ArrayList<PhongDaoTaoModel> listphongdaotaopanelphai = new ArrayList<>();
		while(rs.next())
		{
			PhongDaoTaoModel phongdaotao = new PhongDaoTaoModel();
			phongdaotao.setId_hoatdong(rs.getString(1));
			phongdaotao.setTenhoatdong(rs.getString(2));
			phongdaotao.setNoidung(rs.getString(3));
			phongdaotao.setNgaynhap(rs.getDate(4));
			phongdaotao.setImagehd(rs.getString(8));
			listphongdaotaopanelphai.add(phongdaotao);
		}
		return listphongdaotaopanelphai ;
	}
	public ArrayList<PhongDaoTaoModel> dsHoatDongPhongDaoTaoEnd (String id_pb) throws SQLException
	{
		Connection connection = conn.Connection();
		String sql = "SELECT * FROM web_qlbc.hoatdong hd where IdPB='"+id_pb+"' ORDER BY hd.NgayNhap limit 6,50";
		PreparedStatement pst = connection.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		ArrayList<PhongDaoTaoModel> listphongdaotaopanelend = new ArrayList<>();
		while(rs.next())
		{
			PhongDaoTaoModel phongdaotao = new PhongDaoTaoModel();
			phongdaotao.setId_hoatdong(rs.getString(1));
			phongdaotao.setTenhoatdong(rs.getString(2));
			phongdaotao.setNoidung(rs.getString(3));
			phongdaotao.setNgaynhap(rs.getDate(4));
			phongdaotao.setImagehd(rs.getString(8));
			listphongdaotaopanelend.add(phongdaotao);
		}
		return listphongdaotaopanelend ;
	}
	public PhongDaoTaoModel hoatdong(String id_hd) throws SQLException
	{
		Connection connection = conn.Connection();
		String sql = "SELECT * FROM web_qlbc.hoatdong hd where ID_HD='"+id_hd+"'";
		PreparedStatement pst = connection.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		PhongDaoTaoModel sigglehoatdong = new PhongDaoTaoModel();
		while(rs.next())
		{
			sigglehoatdong.setId_hoatdong(rs.getString(1));
			sigglehoatdong.setTenhoatdong(rs.getString(2));
			sigglehoatdong.setNoidung(rs.getString(3));
			sigglehoatdong.setNgaynhap(rs.getDate(4));
			sigglehoatdong.setImagehd(rs.getString(8));		
		}
		return sigglehoatdong ;
	}
	public int soluonghoatdong(String id_pb) throws SQLException
	{
		Connection connection = conn.Connection();
		String sql = "SELECT count(*) as SoluongTin FROM web_qlbc.hoatdong hd where IdPB='"+id_pb+"'";
		PreparedStatement pst = connection.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		int x=0;
		while(rs.next())
		{
			x =rs.getInt(1);
		}
		return x;
	}
	
	public static void main(String[] args) throws SQLException
	{
		PhongDaoTaoDAO dshoatdong = new PhongDaoTaoDAO();
		System.out.println(dshoatdong.soluonghoatdong("PB005"));
		for(PhongDaoTaoModel pdt : dshoatdong.dsHoatDongPhongDaoTaoPanelTrai("PB005"))
    	{
			System.out.println(pdt.getId_hoatdong()  + pdt.getTenhoatdong() + pdt.getImagehd() );
    	}
		for(PhongDaoTaoModel pdt : dshoatdong.dsHoatDongPhongDaoTaoPanelPhai("PB005"))
    	{
			System.out.println(pdt.getId_hoatdong()  + pdt.getTenhoatdong() + pdt.getImagehd() );
    	}
	}
}
