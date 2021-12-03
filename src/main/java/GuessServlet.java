import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;

@WebServlet(name = "GuessServlet", urlPatterns = "/guess")
public class GuessServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/guess.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Random rn = new Random();

        for(int i =1; i < 4; i++)
        {
            int answer = rn.nextInt(3) + 1;
            System.out.println(answer);

        String one = request.getParameter("one");
        System.out.println(one);
        String two = request.getParameter("two");
        System.out.println(two);
        String three = request.getParameter("three");
        System.out.println(three);
        int num = answer;
        switch (num) {
            case 1:
                System.out.println(one);
                response.sendRedirect("/correct");
                break;
            case 2:
                System.out.println(two);
                response.sendRedirect("/correct");
                break;
                case 3:
                System.out.println(three);
                response.sendRedirect("/correct");
                break;
            default:
                response.sendRedirect("/incorrect");

        }
        }
        }
}
