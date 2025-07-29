package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modal.RegUser;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		String email =request.getParameter("email");
		
		String pass =request.getParameter("pass");
		
		try {
		RegUser r = new RegUser();
		boolean chk= r.CheckUser(email, pass);
		if(chk==true)
		{
			HttpSession session = request.getSession();
			session.setAttribute("fname", r.getFname());
			session.setAttribute("email", r.getEmail());
		
			response.sendRedirect("welcome.jsp");
		}
		else
		{
			request.setAttribute("msg", "Invalid id or password");
			request.getRequestDispatcher("Login.jsp").forward(request,response);
		}
		}
		catch(Exception ex)
		{
			String msg=ex.toString();
			response.sendRedirect("Error.jsp?er="+msg);
		}
		
	}

}
