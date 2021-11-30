import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;




@WebServlet(name = "PageCountServlet", urlPatterns = "/count")
public class CountServlet extends HttpServlet {
    int pageCount = 0;

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setContentType("text/html");
        String searchQuery = req.getParameter("r");
        PrintWriter out = res.getWriter();

        pageCount++;
        out.println("You have visited this page " + pageCount + " times!");
    }

    public void reset() {

        pageCount = 0;
    }

}


