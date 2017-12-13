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
import DAO.PhongDaoTaoDAO;
import Model.PhongBanModel;
import Model.PhongDaoTaoModel;

@WebServlet(urlPatterns = { "/phongdaotaocontroller" })
public class PhongDaoTaoController extends HttpServlet
{
	GetConnection conn = new GetConnection();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter printWriter = resp.getWriter();
		printWriter.println("hello");
		String id_pb="";
		if (req.getParameter("ID_PB")!=null)
		{
			id_pb=req.getParameter("ID_PB");
			System.out.println(id_pb);
			String ten_pb = req.getParameter("Ten_PB");
			PhongDaoTaoDAO getdanhsachphongban = new PhongDaoTaoDAO();
			ArrayList danhsachhoatdongphongdaotao = new ArrayList<>();
			try
			{
				danhsachhoatdongphongdaotao = getdanhsachphongban.dsHoatDongPhongDaoTaoPanelTrai(id_pb);
			} catch (SQLException e)
			{
				e.printStackTrace();
			}
			if (danhsachhoatdongphongdaotao.isEmpty() == true)
			{
				resp.sendRedirect("error.jsp");
			} else
			{
				
				try
				{
					for(PhongDaoTaoModel md : getdanhsachphongban.dsHoatDongPhongDaoTaoEnd(id_pb))
					{
						System.out.println(md.getId_hoatdong() + md.getTenhoatdong());
					}
				} catch (SQLException e)
				{
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				req.setAttribute("dsHoatDong", danhsachhoatdongphongdaotao);
				req.setAttribute("tenphongban", ten_pb);
				req.setAttribute("id_pb",id_pb );
				req.getRequestDispatcher("ViewPhongBan.jsp").forward(req, resp);
			}
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		doGet(req, resp);
	}
}
