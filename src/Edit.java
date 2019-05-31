import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import entity.Member;

@WebServlet("/Edit")
public class Edit extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Edit() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Displays the Member data to be updated
		
		response.setContentType("text/html");
		
		int id = Integer.parseInt(request.getParameter("id")); // getting the 'id' passed in the request
		
		Member m = MemberDao.getMemberById(id); // getting the member with respect to the id given
		
		request.setAttribute("member", m); // sending the object 'm' as 'member' to the .jsp file
		request.getRequestDispatcher("edit.jsp").forward(request, response); // render edit.jsp
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Actually updates the submit data from the edit form
		
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
		
		int status = MemberDao.update(m); // Adding data to DB via DAO and assigning returned value
		
		if(status>0) {
			response.sendRedirect("View"); // redirects to the view page
		} else {
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
		
	}

}
