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
 * Servlet implementation class Delete_HoatDong
 */
@WebServlet("/Delete_HoatDong")
public class Delete_HoatDong extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete_HoatDong() {
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
			int kq;
			String ID_HD1=request.getParameter("ID_HD");
			Model db=new Model();
			try {
				 kq=db.Update_NhanVien("delete  from ChiTietHoatDong where ID_HD = '"+ID_HD1+"'");
				 kq=db.Update_NhanVien("delete  from HoatDong where ID_HD = '"+ID_HD1+"'");
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
		
	}

}
