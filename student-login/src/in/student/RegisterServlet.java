package in.student;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/register-servlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String email = request.getParameter("email");
			
			Student student = new Student();
			student.setUsername(username);
			student.setPassword(password);
			student.setEmail(email);
			
			StudentRegisterHibernate.registerStudent(student);
			
			response.sendRedirect("login.jsp");
		}catch(Exception e) {
			e.printStackTrace();
			
			session.setAttribute("ERROR", "User Already Exists");
			response.sendRedirect("register.jsp");
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
