import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;


@WebServlet("/Create")
public class Create extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String folder = request.getParameter("folder");
        String path = "C:\\DATA\\" + folder;
        File directory = new File(path);
        String msg;
        if (directory.exists()) {
            msg = "Directory already exists";
        } else {
            msg = "Directory was created successfully";
            directory.mkdir();
        }
        request.setAttribute("msg", msg);
        request.setAttribute("folder", folder);
        request.getRequestDispatcher("index.jsp").forward(request, response);
        //response.sendRedirect("index.jsp");
    }
}