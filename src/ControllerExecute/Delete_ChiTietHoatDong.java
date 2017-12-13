package ControllerExecute;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MyModel.Model;

/**
 * Servlet implementation class Delete_ChiTietHoatDong
 */
@WebServlet("/Delete_ChiTietHoatDong")
public class Delete_ChiTietHoatDong extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete_ChiTietHoatDong() {
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
		try
		{
			String ID_HD1=request.getParameter("ID_HD");
			String TenDuLieu1=request.getParameter("TenDuLieu");
		out.println(ID_HD1);
		out.println(TenDuLieu1);
			Model db=new Model();
			try {
				int kq=db.Update_NhanVien("delete  from ChiTietHoatDong where ID_HD = '"+ID_HD1+"' and TenDuLieu='"+TenDuLieu1+"'");
				//RequestDispatcher dispatch=getServletContext().getRequestDispatcher("/hu/examples/dashbroad.jsp");
				//dispatch.forward(request, response);
				response.sendRedirect("/web_qlbc/hu/examples/dashbroad.jsp");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		finally{
			out.close();
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
