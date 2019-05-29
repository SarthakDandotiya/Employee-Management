import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import entity.Member;

@WebServlet("/View")
public class View extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public View() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Displays All Members
		
		response.setContentType("text/html");
		
		// Getting all Members in an Array List
		List<Member> list = MemberDao.getAllMembers();
		
		request.setAttribute("list", list); // Sending the ArrayList with the name "list" to be used in the jsp/jstl
		request.getRequestDispatcher("view.jsp").forward(request, response); // render view.jsp
	}

}
