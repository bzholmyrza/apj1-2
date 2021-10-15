import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;


@WebServlet("/Download")
public class Download extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String aFileName = new String(request.getParameter("down").getBytes(
                "iso8859-1"), "gbk");

        File fileLoad = new File("C:\\DATA", aFileName);

        FileInputStream in = null; //input stream
        OutputStream out = response.getOutputStream();
        byte b[] = new byte[1024];

        try {

            response.setContentType("application/x-msdownload;");

            response.setHeader("Content-disposition", "attachment; filename="
                    + new String(aFileName.getBytes("GBK"), "ISO-8859-1"));

            // download the file.
            in = new FileInputStream(fileLoad);
            int n = 0;
            while ((n = in.read(b)) != -1) {
                out.write(b, 0, n);
            }

        } catch (Throwable e) {
            e.printStackTrace();
        } finally {
            try {
                in.close();
                out.close();
            } catch (Throwable e) {
                e.printStackTrace();
            }
        }
    }
}