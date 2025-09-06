package player;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Delete extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try(PrintWriter out=response.getWriter()){
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Servlet Login</title>");
			out.println("</head>");
			out.println("<body>");

//feth data from delete form
            
           String delemail = request.getParameter("email");
            String delpass = request.getParameter("password");
            
            UserDatabase db =  new UserDatabase(ConnectionPro.getConnection());
            User user = db.delUser(delemail, delpass);
           if(user!=null){
                HttpSession session = request.getSession();
                session.setAttribute("delUser", user);
                response.sendRedirect("registration.jsp");
            }
           else {
        	   response.sendRedirect("registration.jsp");
           }  
            out.println("</body>");
			out.println("</html>");
			
		}
	}

}