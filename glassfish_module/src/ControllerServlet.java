import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Objects;

public class ControllerServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if ((request.getParameter("input_x") != null) && (request.getParameter("input_y") != null) &&
				(request.getParameter("input_r") != null) &&
				(!Objects.equals(request.getParameter("input_x"), "")) &&
				(!Objects.equals(request.getParameter("input_y"), "")) &&
				(!Objects.equals(request.getParameter("input_r"), ""))) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/area_check");
			if (dispatcher == null) {
				response.sendError(response.SC_NO_CONTENT);
			} else dispatcher.forward(request, response);
		} else {
			request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
		}
	}
}
