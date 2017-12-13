package MyModel;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Base64;

import javax.servlet.ServletOutputStream;

import com.mysql.jdbc.Blob;



public class Model {
	String sql;
	 String my_class="com.mysql.jdbc.Driver";
	 String connecttionUrl;
	 String user;
	 String pass;
	public Model() {
		super();
		connecttionUrl="jdbc:mysql://localhost/web_qlbc";
		user ="root";
		pass="123";
	}
	public Connection connect() throws Exception{
		try {
			Class.forName(my_class);
			Connection  connect = DriverManager.getConnection(connecttionUrl,user,pass);
			return connect;
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
	
	public void thucThiCauLenhSQL(String sql) throws Exception{
		Connection connect =connect();
		Statement stmt = connect.createStatement();
		stmt.executeUpdate(sql);
	}
	public ResultSet chonDuLieuTuDTB(String sql) throws Exception{
		Connection connect = connect();
		Statement stmt = connect.createStatement();
		ResultSet rs =stmt.executeQuery(sql);
		return rs;
		
	}
	public ResultSet chonDuLieuTuDTB1(String sql) throws Exception{
		Blob image = null;
		  Connection con = null;
		  Statement stmt = null;
		  ResultSet rs = null;
		  //ServletOutputStream out = response.getOutputStream();
		  try 
		  {
			  Class.forName("com.mysql.jdbc.Driver");
			  con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/web_qlbc","root","123");
			  stmt = (Statement) con.createStatement();
			 rs = stmt.executeQuery(sql);
			  if (rs.next()) 
			  {
				  //response.setContentType("text/html");
				 // out.println("<html><head><title>Display Blob Example</title></head>");
				  while(rs.next())
				  {
					  image = (Blob) rs.getBlob(4);
					  //response.setContentType("image/gif");
					  InputStream in = image.getBinaryStream();
					  int length = (int) image.length();
					  int bufferSize = 1024;
					  //byte[] buffer = new byte[bufferSize];
					  byte[] blobAsBytes = image.getBytes(1, length);
					  String imgDataBase64 =new String(Base64.getEncoder().encode(blobAsBytes));
					 // response.setContentType("text/html");
					 // out.println("<html><head><title>Display Blob Example</title></head>");
					  //out.println("<body><center><img src=\"data:image/gif;base64, "+imgDataBase64+" \" alt=\"images Here\" width=\"70%\" /><br/></center>");
					  //width=\"500px\" height=\"500px\"--change size
					  in.close();
					  //out.flush();
				  }
			  }
		  }catch(Exception e)
		  {}
		return rs;
	}
	public int Update_NhanVien(String sql) throws Exception{
		Connection connect = connect();
		Statement stmt = connect.createStatement();
	
		int kq=0;
		kq =stmt.executeUpdate(sql);
		return kq;
	}
	public ResultSet GetData(String sql) throws Exception{
		Connection connect = connect();
		Statement stmt = connect.createStatement();
		ResultSet rs=null;
		int kq=0;
		rs =stmt.executeQuery(sql);
		return rs;
	}
	public static void main(String[] args) throws Exception {
		Model connect = new Model();
		System.out.println(connect.connect());
	}
	
}
