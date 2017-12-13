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
 * Servlet implementation class Delete_NhanVien
 */
@WebServlet("/Delete_NhanVien")
public class Delete_NhanVien extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete_NhanVien() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out=response.getWriter();
				try
				{
					String SoCM1=request.getParameter("SoCM");
					Model db=new Model();
					try {
						int kq=db.Update_NhanVien("delete  from nhanvien where SoCM = '"+SoCM1+"'");
						response.sendRedirect("/web_qlbc/hu/examples/NhanVIen.jsp");
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
	/*	response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		try
		{
			String id=request.getParameter("id");
			Model db=new Model();
			try {
				int kq=db.Update_NhanVien("delete from NhanVien where IDNhanVien="+id);
				RequestDispatcher dispatch=getServletContext().getRequestDispatcher("/hu/NhanVien");
				dispatch.forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		finally{
			out.close();
		}*/
	}

}
