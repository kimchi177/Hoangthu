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
 * Servlet implementation class Update_ChiTietHD2
 */
@WebServlet("/Update_ChiTietHD2")
public class Update_ChiTietHD2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update_ChiTietHD2() {
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
		PrintWriter out=response.getWriter();
		String ID_HD=request.getParameter("ID_HD");
	String TenDuLieu=request.getParameter("TenDuLieu");
	String NoiDungDuLieu=request.getParameter("NoiDungDuLieu");
	String LoaiDulieu=request.getParameter("LoaiDulieu");
	String IDNhanVien=request.getParameter("IDNhanVien");
	Model db=new Model();
	try {
		db.Update_NhanVien("update ChiTietHoatDong set TenDuLieu='"+TenDuLieu+"', NoiDungDuLieu='"+NoiDungDuLieu+"',LoaiDulieu='"+LoaiDulieu+"',IDNhanVien='"+IDNhanVien+"' where ID_HD='"+ID_HD+"'");
		
		response.sendRedirect("/web_qlbc/hu/examples/dashbroad.jsp");
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}

}
