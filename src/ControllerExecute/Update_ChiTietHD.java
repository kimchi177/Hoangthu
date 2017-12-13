package ControllerExecute;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MyModel.Model;

/**
 * Servlet implementation class Update_ChiTietHD
 */
@WebServlet("/Update_ChiTietHD")
public class Update_ChiTietHD extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update_ChiTietHD() {
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
		String TenDuLieu=request.getParameter("TenDuLieu");
Model db=new Model();
		ResultSet rs;
		try {
			rs = db.GetData("select * from ChiTietHoaDong where ID_HD=  '"+ID_HD+"' and TenDuLieu='"+TenDuLieu+"'");
			rs.next();
			request.setAttribute("ChiTietHoaDong", rs);
			RequestDispatcher dispatch=getServletContext().getRequestDispatcher("/hu/examples/Update_CTHD.jsp");
			dispatch.forward(request, response);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
		// TODO Auto-generated method stub
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out=response.getWriter();
				String ID_HD=request.getParameter("ID_HD");
				String TenDuLieu=request.getParameter("TenDuLieu");
		Model db=new Model();
				ResultSet rs;
				try {
					rs = db.GetData("select * from ChiTietHoaDong where ID_HD=  '"+ID_HD+"' and TenDuLieu='"+TenDuLieu+"'");
					rs.next();
					request.setAttribute("ChiTietHoaDong", rs);
					RequestDispatcher dispatch=getServletContext().getRequestDispatcher("/hu/examples/Update_CTHD.jsp");
					dispatch.forward(request, response);
					
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				finally{
					out.close();
				}
	}

}
