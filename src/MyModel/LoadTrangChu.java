package MyModel;

import java.io.IOException;
import java.io.InputStream;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Blob;
import com.sun.corba.se.pept.transport.Connection;


/**
 * Servlet implementation class LoadTrangChu
 */
@WebServlet("/LoadTrangChu")
public class LoadTrangChu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoadTrangChu() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		Blob image = null;
		  Connection con = null;
		  Statement stmt = null;
		  ResultSet rs = null;
		  ServletOutputStream out = response.getOutputStream();
		  try 
		  {
			  Class.forName("com.mysql.jdbc.Driver");
			  con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/LapTrinhWeb_database_1","root","123");
			  stmt = (Statement) ((java.sql.Connection) con).createStatement();
			  rs = stmt.executeQuery("select * from ChiTietHoatDong ");
			  if (rs.next()) 
			  {
				  response.setContentType("text/html");
				  out.println("<html><head><title>Display Blob Example</title></head>");
				  while(rs.next())
				  {
					  image = (Blob) rs.getBlob(1);
					  //response.setContentType("image/gif");
					  InputStream in = image.getBinaryStream();
					  int length = (int) image.length();
					  int bufferSize = 1024;
					  //byte[] buffer = new byte[bufferSize];
					  byte[] blobAsBytes = image.getBytes(1, length);
					  String imgDataBase64 =new String(Base64.getEncoder().encode(blobAsBytes));
					  response.setContentType("text/html");
					  out.println("<html><head><title>Display Blob Example</title></head>");
					  out.println("<body><center><img src=\"data:image/gif;base64, "+imgDataBase64+" \" alt=\"images Here\" width=\"70%\" /><br/></center>");
					  //width=\"500px\" height=\"500px\"--change size
					  in.close();
					  out.flush();
				  }
				 out.println("</body></html>"); 
				  
			  } 
			  else 
			  {
				  response.setContentType("text/html");
				  out.println("<html><head><title>Display Blob Example</title></head>");
				  out.println("<body><h4><font color='red'>image not found for given id</font></h4></body></html>");
				  return;
			  }
			   
		  } 
		  catch (Exception e) 
		  {
			  response.setContentType("text/html");
			  out.println("<html><head><title>Unable To Display image</title></head>");
			  out.println("<body><h4><font color='red'>Image Display Error=" + e.getMessage() +
			   "</font></h4></body></html>");
			  return;
		  } 
		  finally 
		  {
			  try 
			  {
				  rs.close();
				  stmt.close();
				  con.close();
			  } 
			  catch (SQLException e) 
			  {
				  e.printStackTrace();
			  }
		  }
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
