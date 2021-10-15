import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

@WebServlet("/DB")
public class DB  extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Person user = (Person) request.getAttribute("user");
        int id = user.getId();
        File file = new File("C:\\Users\\ASUS\\Desktop\\db.txt");
        file.createNewFile();
        FileWriter writer = new FileWriter(file, true);
        writer.write(id + "," + user.getFullName() + "," + user.getEmail() + "," + user.getGender() + "," + user.getCity() + "," + user.getCountry());
        writer.write("\r\n");   // write new line
        writer.close();
        response.sendRedirect("main.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
