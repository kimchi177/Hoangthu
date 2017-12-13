package Connect;
import java.io.*;
import java.sql.*;

public class GetConnection
{
	private String my_class = "com.mysql.jdbc.Driver";
	private String connectionUrl = "jdbc:mysql://localhost:3306/web_qlbc";

	private String user = "root";
	private String pass = "123";

	private Connection conn = null;

	public GetConnection()
	{
		
	}		
	public Connection Connection()
	{
		try
		{
			Class.forName(my_class);
			conn = DriverManager.getConnection(connectionUrl,user,pass);
			System.out.println("connection thanh cong !");
		} catch (ClassNotFoundException e)
		{
			System.out.println("Class not found " + e.toString());
		} catch (SQLException e)
		{
			System.out.println("connected fail ");
			e.printStackTrace();
		}	
		return conn;
	}
}
