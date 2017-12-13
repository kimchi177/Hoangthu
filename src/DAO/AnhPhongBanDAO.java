package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Connect.GetConnection;
import Model.AnhPhongBanModel;
import Model.PhongBanModel;

public class AnhPhongBanDAO
{
	GetConnection conn = new GetConnection();
	public ArrayList<AnhPhongBanModel> gestanhPhongBan(String id_pb) throws SQLException
	{
		Connection connection = conn.Connection();
		String sql = "select *from anh_phongb where idPB='"+id_pb+"'";
		PreparedStatement pst = connection.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		ArrayList<AnhPhongBanModel> listanhphongban = new ArrayList<>();
		while(rs.next())
		{
			AnhPhongBanModel anhphongban = new AnhPhongBanModel();
			anhphongban.setIDNhanVien(rs.getString(1));
			anhphongban.setId_Anh(rs.getString(2));
			anhphongban.setTenAnh(rs.getString(3));
			anhphongban.setLink(rs.getString(4));
			anhphongban.setIdPB(rs.getString(5));
			listanhphongban.add(anhphongban);
		}
		return listanhphongban ;
	}
	public static void main(String[] args) throws SQLException
	{
		AnhPhongBanDAO as = new AnhPhongBanDAO();
		for(AnhPhongBanModel a : as.gestanhPhongBan("PB004"))
		{
			System.out.println(a.getLink() +"\n");
		}
	}

}
