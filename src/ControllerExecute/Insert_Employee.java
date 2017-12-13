package ControllerExecute;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.sql.*;
/**
 * Servlet implementation class Insert_Employee
 */
@WebServlet("/Insert_Employee")
@MultipartConfig(fileSizeThreshold =1024*1024*2,maxFileSize=1024*1024*10,maxRequestSize=1024*1024*50)
public class Insert_Employee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Insert_Employee() {
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
		
		
	
	
response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
	PrintWriter out=response.getWriter();
	//String savePath="D:/eclip_homework/web_qlbc/WebContent/"+File.separator+SAVE_DIR;
	//File fileSaveDir=new File(savePath);
	String MaNV=request.getParameter("MaNV");
	String CMND=request.getParameter("CMND");
	String Ten=request.getParameter("Ten");
	String Sodt=request.getParameter("Sodt");
	String MatKhau=request.getParameter("MatKhau");
	String MaPB=request.getParameter("MaPB");
	//Part part=request.getPart("file");
	//String fileName=extractFileName(part);LoaiDL
	//part.write(savePath+File.separator+fileName);
	out.println(MaNV);
	out.println(CMND);
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
		 connecttionUrl="jdbc:mysql://localhost/web_qlbc?useUnicode=true&characterEncoding=UTF-8";
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
		String sql="insert into  NhanVien values (?, ?,?, ?,?,?,?);";
		PreparedStatement statement = conn.prepareStatement(sql);
		statement.setString(1, MaNV);
		statement.setString(2, CMND);
		statement.setString(3, Ten);
		statement.setString(4, Sodt);
		statement.setString(6, MatKhau);
		statement.setString(7, MaPB);
		if (inputStream != null) {
			
			// fetches input stream of the upload file for the blob column
			statement.setBlob(5, inputStream);
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
	
}}
}
