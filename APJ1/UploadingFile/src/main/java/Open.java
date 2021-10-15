import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/Open")
public class Open extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String fileName = request.getParameter("open");
        String path = "C:\\DATA\\" + fileName;
        request.setAttribute("path" , path);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}