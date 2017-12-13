package ControllerExecute;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class Insert_Event
 */
@WebServlet("/Insert_Event")
public class Insert_Event extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Insert_Event() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
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
		String ID1=request.getParameter("ID");
		String THD1=request.getParameter("THD");
		String MaPB=request.getParameter("MaPB");
		String MaNV1=request.getParameter("MaNV");
		String MaLV1=request.getParameter("MaLV");
		String editor1=request.getParameter("editor1");
		 Calendar calendar = Calendar.getInstance();
	     java.sql.Timestamp ourJavaTimestampObject = new java.sql.Timestamp(calendar.getTime().getTime());
	     
		//Part part=request.getPart("file");
		//String fileName=extractFileName(part);
		//part.write(savePath+File.separator+fileName);editor1
		try {
			PreparedStatement pst = null;
			String my_class="com.mysql.jdbc.Driver";
			 String connecttionUrl;
			 String user;
			 String pass;
			 connecttionUrl="jdbc:mysql://localhost:3306/web_qlbc?useUnicode=true&characterEncoding=UTF-8";
				user ="root";
				pass="123";
			Class.forName(my_class);
			Connection connect;
		
			try {
				connect = DriverManager.getConnection(connecttionUrl,user,pass);
				String sql="insert into  HoatDong values (?,?,?,?,?,?,?)";
				 pst=connect.prepareStatement(sql);
				pst.setString(1, ID1);
				pst.setString(2, THD1);
				pst.setString(3,editor1 );
				pst.setTimestamp(4, ourJavaTimestampObject);
				pst.setString(5, MaNV1);
				pst.setString(6, MaLV1);
				pst.setString(7, MaPB);
				//String filePath=savePath+File.separator+fileName;
				//pst.setString(3, filePath);
				pst.execute();
				out.println("<center><h1>Image insert succesfully...</h1></center>");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				
			}
			
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
			
		}
	}

}
