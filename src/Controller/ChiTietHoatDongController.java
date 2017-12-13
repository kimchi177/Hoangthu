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

import DAO.ChiTietHoatDongDAO;
import DAO.PhongBanDAO;

@WebServlet(urlPatterns = { "/chitiethoatdong" })
public class ChiTietHoatDongController extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{

		resp.setContentType("text/html; charset=utf-8");
		PrintWriter printWriter = resp.getWriter();
		printWriter.println("hello");
		String id_hd = "";
		if (req.getParameter("ID_HD") != null)
		{
			id_hd=req.getParameter("ID_HD");
			ChiTietHoatDongDAO getchitiethoatdong = new ChiTietHoatDongDAO();

			ArrayList ds_cthd = new ArrayList<>();
			try
			{
				ds_cthd = getchitiethoatdong.gestchitiethoatdong(id_hd);
			} catch (SQLException e)
			{
				e.printStackTrace();
			}
			if (ds_cthd.isEmpty() == true)
			{
				resp.sendRedirect("error.jsp");
			} else
			{
				req.setAttribute("chitiethoatdong", ds_cthd);
				req.setAttribute("id_hd", id_hd);
				req.getRequestDispatcher("ChiTiet.jsp").forward(req, resp);
			}
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		doGet(req, resp);
	}
}
