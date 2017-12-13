package MyModel;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import java.sql.*;
import java.util.Calendar;




/**
 * Servlet implementation class Insert
 */
@WebServlet("/Insert")
@MultipartConfig(fileSizeThreshold =1024*1024*2,maxFileSize=1024*1024*10,maxRequestSize=1024*1024*50)
public class Insert extends HttpServlet {
	/*private static final long serialVersionUID = 1L;
	 * 
	 */
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Insert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		/*response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		String savePath="D:/eclip_homework/web_qlbc/WebContent/"+File.separator+SAVE_DIR;
		File fileSaveDir=new File(savePath);
		String firstName=request.getParameter("fristname");
		String lastName=request.getParameter("lastname");
		Part part=request.getPart("file");
		String fileName=extractFileName(part);
		part.write(savePath+File.separator+fileName);
		out.println(firstName);
		out.println(lastName);

		try {
			PreparedStatement pst = null;
			String my_class="com.mysql.jdbc.Driver";
			 String connecttionUrl;
			 String user;
			 String pass;
			 connecttionUrl="jdbc:mysql://localhost/web_qlbc";
				user ="root";
				pass="123";
			Class.forName(my_class);
			Connection connect;
			try {
				connect = DriverManager.getConnection(connecttionUrl,user,pass);
				String sql="insert into  imageevent values (?,?,?)";
				 pst=connect.prepareStatement(sql);
				pst.setString(1, firstName);
				pst.setString(2, lastName);
				String filePath=savePath+File.separator+fileName;
				pst.setString(3, filePath);
				pst.execute();
				out.println("<center><h1>Image insert succesfully...</h1></center>");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}*/
		PrintWriter out=response.getWriter();
		//String savePath="D:/eclip_homework/web_qlbc/WebContent/"+File.separator+SAVE_DIR;
		//File fileSaveDir=new File(savePath);
		String firstName=request.getParameter("fristname");
		String lastName=request.getParameter("lastname");
		String LoaiDL=request.getParameter("LoaiDL");
		String NDDL=request.getParameter("NDDL");
		String MaNV=request.getParameter("MaNV");
		//Part part=request.getPart("file");
		//String fileName=extractFileName(part);LoaiDL
		//part.write(savePath+File.separator+fileName);
		out.println(firstName);
		out.println(lastName);
		InputStream inputStream = null;	
		Part filePart = request.getPart("file");
		if (filePart != null) {
			// prints out some information for debugging
			System.out.println(filePart.getName());
			System.out.println(filePart.getSize());
			System.out.println(filePart.getContentType());
			
			// obtains input stream of the upload file
			inputStream = filePart.getInputStream();
		}
		Connection conn = null;	// connection to the database
		String message = null;	// message will be sent back to client
		try {
			String my_class="com.mysql.jdbc.Driver";
			 String connecttionUrl;
			 String user;
			 String pass;
			 connecttionUrl="jdbc:mysql://localhost/web_qlbc";
				user ="root";
				pass="123";
			// connects to the database
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			conn = DriverManager.getConnection(connecttionUrl, user, pass);
			String querySetLimit = "SET GLOBAL max_allowed_packet=104857600;";	// 10 MB
			Statement stSetLimit = (Statement) conn.createStatement();
			stSetLimit.execute(querySetLimit);
			 Calendar calendar = Calendar.getInstance();
		     java.sql.Timestamp ourJavaTimestampObject = new java.sql.Timestamp(calendar.getTime().getTime());
			// constructs SQL statement
			//String sql = "INSERT INTO contacts (first_name, last_name, photo) values (?, ?, ?)";
			String sql="insert into  ChiTietHoatDong values (?, ?,?, ?,?,?,?);";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, firstName);
			statement.setString(2, lastName);
			statement.setString(3, NDDL);
			statement.setString(7, MaNV);
			statement.setTimestamp(6, ourJavaTimestampObject);
			statement.setString(5, LoaiDL);
			if (inputStream != null) {
				
				// fetches input stream of the upload file for the blob column
				statement.setBlob(4, inputStream);
			}
			// sends the statement to the database server
			int row = statement.executeUpdate();
			if (row > 0) {
				message = "File uploaded and saved into database";
			}
		} catch (SQLException ex) {
			message = "ERROR: " + ex.getMessage();
			ex.printStackTrace();
		} 
		finally 
		{
			
			if (conn != null) 
			{
				// closes the database connection
				try 
				{
					conn.close();
				}
				catch (SQLException ex) 
				{
					ex.printStackTrace();
				}
			}
			// sets the message in request scope
			request.setAttribute("Message", message);
			
			// forwards to the message page
			//getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
		
	}
	}

	/*private String extractFileName(Part part) {
		// TODO Auto-generated method stub
		//return null;
		String contentDisp=part.getHeader("content-disposition");
		String[] items=contentDisp.split(";");
		for(String s: items)
		{
			if(s.trim().startsWith("filename"))
			{
				return s.substring(s.indexOf("=")+2,s.length()-1);
			}
		}
		return "";
	}*/

}
