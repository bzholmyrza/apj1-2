import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;



@WebServlet("/Delete")
public class Delete extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String fileName = request.getParameter("del");
        File delFile = new File("C:\\DATA\\" + fileName);
        if (delFile.delete()) {
            response.sendRedirect("index.jsp");
        }
        //response.sendRedirect("index.jsp");
    }
}