package ControllerExecute;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MyModel.Model;

/**
 * Servlet implementation class Delete_LinhVuc
 */
@WebServlet("/Delete_LinhVuc")
public class Delete_LinhVuc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete_LinhVuc() {
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
		//
		String ID_HD="";
		int kq;
		String Id_LinhVuc1=request.getParameter("Id_LinhVuc");
		//
		Model db1=new Model();
		ResultSet rs1;
		try {
			rs1 = db1.GetData("select ID_HD from HoatDong where Id_LinhVuc=  '"+Id_LinhVuc1+"'");
			while(rs1.next())
			{
				ID_HD=rs1.getString(1);
				out.println(ID_HD);
			}
			out.println(ID_HD);
			//
			Model db=new Model();
			
				 kq=db.Update_NhanVien("delete  from ChiTietHoatDong where ID_HD = '"+ID_HD+"'");
				 kq=db.Update_NhanVien("delete  from HoatDong where Id_LinhVuc = '"+Id_LinhVuc1+"'");
				 kq=db.Update_NhanVien("delete  from LinhVuc where Id_LinhVuc = '"+Id_LinhVuc1+"'");
				//RequestDispatcher dispatch=getServletContext().getRequestDispatcher("/hu/examples/dashbroad.jsp");
				//dispatch.forward(request, response);
				response.sendRedirect("/web_qlbc/hu/examples/dashbroad.jsp");
			
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
		doGet(request, response);
	}

}
