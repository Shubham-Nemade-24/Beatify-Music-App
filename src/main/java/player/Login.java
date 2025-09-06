package player;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

public class Login extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try(PrintWriter out=response.getWriter()){
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Servlet Login</title>");
			out.println("</head>");
			out.println("<body>");

//feth data from login form
            
            String logemail = request.getParameter("email");
            String logpass = request.getParameter("password");
            
            UserDatabase db =  new UserDatabase(ConnectionPro.getConnection());
            User user = db.logUser(logemail, logpass);
            
            if(user!=null){
                HttpSession session = request.getSession();
                session.setAttribute("logUser", user);
                response.sendRedirect("index.jsp");
            }else{
                out.println("Invalid credentials");
            }
            out.println("</body>");
			out.println("</html>");
			
		}
	}

}