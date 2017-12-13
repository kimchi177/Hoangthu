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
 * Servlet implementation class Update_NhanVien_2
 */
@WebServlet("/Update_NhanVien_2")
public class Update_NhanVien_2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update_NhanVien_2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				//response.getWriter().append("Served at: ").append(request.getContextPath());
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out=response.getWriter();
				String SoCM=request.getParameter("SoCM");
			String TenNV=request.getParameter("TenNV");
			String SoDT=request.getParameter("SoDT");
			String MatKhau=request.getParameter("MatKhau");
			String IdPB=request.getParameter("IdPB");
			Model db=new Model();
			try {
				db.Update_NhanVien("update NhanVien set TenNV='"+TenNV+"', SoDT='"+SoDT+"',MatKhau='"+MatKhau+"',IdPB='"+IdPB+"' where SoCM='"+SoCM+"'");
				
				response.sendRedirect("/web_qlbc/hu/examples/NhanVIen.jsp");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	}

}
