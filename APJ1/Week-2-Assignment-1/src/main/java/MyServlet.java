import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        if (!email.contains("@astanait.edu.kz")) {
            request.setAttribute("error", "Sorry, you must be a part of AITU community");
            request.getRequestDispatcher("error.jsp").forward(request, response);
            return;
        }
        String gender = request.getParameter("gender");
        String city = request.getParameter("city");
        String country = request.getParameter("country");
        registerPerson(fullName,email,gender,city,country,request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    private void registerPerson(String fullName, String email, String gender, String city, String country,HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Person user = new Person(fullName, email, gender, city, country);
        request.setAttribute("user", user);
        request.getRequestDispatcher("/DB").forward(request, response);
    }
}
