package player;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

	public class Logout extends HttpServlet {
	    private static final long serialVersionUID = 1L;
	 
	    public Logout() {
	        super();
	    }
	 
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        HttpSession session = request.getSession(false);
	        if (session != null) {
	            session.removeAttribute("logUser");
	            session.invalidate();
	            RequestDispatcher dispatcher = request.getRequestDispatcher("registration.jsp");
	            dispatcher.forward(request, response);
	        }
	    }
	}
		