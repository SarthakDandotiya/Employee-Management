import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import entity.Member;

@WebServlet("/Save")
public class Save extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Save() {
        super();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.getRequestDispatcher("index.jsp").forward(request, response);
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Saves the New Member data
		
		response.setContentType("text/html");
		
		// Getting the input data from the form and storing them into variables
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		int age = Integer.parseInt(request.getParameter("age"));
		
		Member m = new Member(); // Create a new object to store values through
		// Adding data into the object just created
		m.setId(id);
		m.setName(name);
		m.setEmail(email);
		m.setAge(age);
		
		int status = MemberDao.save(m); // Adding data to DB via DAO and assigning returned value
		
		if(status>0) {
			doGet(request, response);
//			request.getRequestDispatcher("index.jsp").forward(request, response); // redirects to index.html
		} else {
			request.getRequestDispatcher("error.jsp"); // If not successful, display error page
		}
		
	}

}
