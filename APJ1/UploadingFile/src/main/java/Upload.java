import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;

@WebServlet("/Upload")
@MultipartConfig(fileSizeThreshold = 1024 * 1024,
        maxFileSize = 1024 * 1024 * 5,
        maxRequestSize = 1024 * 1024 * 5 * 5)
public class Upload extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        PrintWriter out = response.getWriter();
        Part part = request.getPart("file");
        String fileName = part.getSubmittedFileName();
        String folder = (String) request.getAttribute("folder");
        String separator;
        if (folder == null) {
            separator = File.separator;
        }else {
            separator = File.separator + folder + File.separator;
        }
        String path = "C:\\DATA" + separator + fileName;
        InputStream is = part.getInputStream();
        boolean success = uploadFile(is, path);
        if (success) {
            response.sendRedirect("index.jsp");
        }else {
            response.sendRedirect("error.jsp");
        }
    }

    private boolean uploadFile(InputStream is, String path) {
        boolean success = false;
        try{
            byte byt[] = new byte[is.available()];
            is.read();
            FileOutputStream fos = new FileOutputStream(path);
            fos.write(byt);
            fos.flush();
            fos.close();
            success = true;
        }catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return success;
    }
}