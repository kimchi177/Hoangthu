package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Connect.GetConnection;
import DAO.PhongBanDAO;

@WebServlet(urlPatterns={"/phongban"})
public class PhongBanController extends HttpServlet
{
	GetConnection conn = new GetConnection();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter printWriter = resp.getWriter();
		printWriter.println("hello");
		
		 
		PhongBanDAO getdanhsachphongban = new PhongBanDAO();
	
		ArrayList danhsachphongban = new ArrayList<>();
		try
		{
			danhsachphongban = getdanhsachphongban.gestlistPhongBan();
		} catch (SQLException e)
		{
			e.printStackTrace();
		}	
		if (danhsachphongban.isEmpty() == true) {
			resp.sendRedirect("error.jsp");
		} else {
		req.setAttribute("danhsachphongban", danhsachphongban);
		req.getRequestDispatcher("TrangChu.jsp").forward(req, resp);
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		doGet(req, resp);
	}
}
