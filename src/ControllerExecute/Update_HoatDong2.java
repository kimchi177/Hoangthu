package ControllerExecute;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MyModel.Model;

/**
 * Servlet implementation class Update_HoatDong2
 */
@WebServlet("/Update_HoatDong2")
public class Update_HoatDong2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update_HoatDong2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		String ID_HD=request.getParameter("ID_HD");
	String TenHD=request.getParameter("TenHD");
	String Id_LinhVuc=request.getParameter("Id_LinhVuc");
	String IdPB=request.getParameter("IdPB");
	Model db=new Model();
	try {
		db.Update_NhanVien("update HoatDong set TenHD='"+TenHD+"', Id_LinhVuc='"+Id_LinhVuc+"',IdPB='"+IdPB+"' where SoCM='"+ID_HD+"'");
		
		response.sendRedirect("/web_qlbc/hu/examples/dashbroad.jsp");
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		String ID_HD=request.getParameter("ID_HD");
	String TenHD=request.getParameter("TenHD");
	String Id_LinhVuc=request.getParameter("Id_LinhVuc");
	String IdPB=request.getParameter("IdPB");
	Model db=new Model();
	try {
		db.Update_NhanVien("update HoatDong set TenHD='"+TenHD+"', Id_LinhVuc='"+Id_LinhVuc+"',IdPB='"+IdPB+"' where ID_HD='"+ID_HD+"'");
		
		response.sendRedirect("/web_qlbc/hu/examples/dashbroad.jsp");
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}

}
