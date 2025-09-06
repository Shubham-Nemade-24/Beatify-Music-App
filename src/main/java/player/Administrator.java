package player;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

public class Administrator extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try(PrintWriter out=response.getWriter()){
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Servlet Administrator</title>");
			out.println("</head>");
			out.println("<body>");

//feth data from admin form
            
            String admemail = request.getParameter("email");
            String admpass = request.getParameter("password");
            
            AdminDatabase db =  new AdminDatabase(AdminConnectionPro.getConnection());
            Admin admin = db.logAdmin(admemail, admpass);
            
            if(admin!=null){
                HttpSession session = request.getSession();
                session.setAttribute("logAdmin", admin);
                response.sendRedirect("AdminIndex.jsp");
            }else{
                out.println("Invalid credentials");
            }
            out.println("</body>");
			out.println("</html>");
			
		}
	}

}
