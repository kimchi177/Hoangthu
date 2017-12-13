package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Connect.GetConnection;
import Model.PhongBanModel;

public class PhongBanDAO
{
	GetConnection conn = new GetConnection();
	public ArrayList<PhongBanModel> gestlistPhongBan() throws SQLException
	{
		Connection connection = conn.Connection();
		String sql = "select *from phongban ";
		PreparedStatement pst = connection.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		ArrayList<PhongBanModel> listphongban = new ArrayList<>();
		while(rs.next())
		{
			PhongBanModel phongban = new PhongBanModel();
			phongban.setId_phongban(rs.getString(1));
			phongban.setTenphongban(rs.getString(2));
			listphongban.add(phongban);
		}
		return listphongban ;
	}
}
