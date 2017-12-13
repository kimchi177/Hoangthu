package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/logout" })
public class Logout extends HttpServlet
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
		String user = "";
		try
		{
			Cookie[] cookies = req.getCookies();
			for (Cookie c : cookies)
			{
				if (c.getName().equals("user"))
				{
					user = c.getValue();
					if (user != null || !user.trim().equals(""))
					{
						
						c.setMaxAge(0);
						resp.addCookie(c);
						System.out.println("da xoa cookie");
					}
				}
			}

		} catch (Exception e)
		{
			System.out.println("loi cookie");
		}
		
		resp.sendRedirect("/Web_QuanLyBienChung/phongban");
	}
}
