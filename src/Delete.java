

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;

@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Delete() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Deletes the member record
		
		int id = Integer.parseInt(request.getParameter("id")); // getting the id parameter
		
		MemberDao.delete(id); // Executing the delete operation
		
		request.getRequestDispatcher("View").forward(request, response); // Redirects back to view all member page
	}

}
