package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/check-login" })
public class CheckLogin extends HttpServlet
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		try
		{
		String user = req.getParameter("user");	
		String pass = req.getParameter("pass");
		// chua login
		if (user == null || user.trim().equals(""))
		{
			req.setAttribute("error", "ban can phai dang nhap");
			req.getRequestDispatcher("/login.jsp").forward(req, resp);
			
		} else 
			if(user.trim().equals("admin") && pass.equals("123"))// da login admin
		{
			System.out.println("login in : " + user);
			Cookie cookie_user = new Cookie("user", user);
			cookie_user.setMaxAge(1800);
			resp.addCookie(cookie_user);

			resp.sendRedirect("insert_act_detail.jsp");
		}
			else if(!user.trim().equals("admin"))
			{
				System.out.println("login in : " + user);
				Cookie cookie_user = new Cookie("user", user);
				cookie_user.setMaxAge(1800);
				resp.addCookie(cookie_user);

				resp.sendRedirect("insert_act_detail.jsp");
			}
			else
			{
				
				resp.sendRedirect("login.jsp");
			}
		}catch (Exception e) {
			
			resp.sendRedirect("error_login.jsp");
		}

	}
}
