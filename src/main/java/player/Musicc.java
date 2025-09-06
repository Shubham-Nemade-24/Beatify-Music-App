package player;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

public class Musicc extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try(PrintWriter out=response.getWriter()){
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Servlet Musicc</title>");
			out.println("</head>");
			out.println("<body>");

			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			//make user object
			User userModel = new User(name, email, password);

			//create a database model
			UserDatabase regUser = new UserDatabase(ConnectionPro.getConnection());
			if (regUser.saveUser(userModel)) {
			   response.sendRedirect("login.jsp");
			} else {
			    String errorMessage = "User Available";
			    HttpSession regSession = request.getSession();
			    regSession.setAttribute("RegError", errorMessage);
			    response.sendRedirect("available.jsp");
			    }
			out.println("</body>");
			out.println("</html>");
			
			
		}
	}

}
