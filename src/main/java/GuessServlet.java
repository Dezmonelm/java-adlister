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

        int answer = rn.nextInt(3) + 1;
        System.out.println("random num " + answer);

        String num = request.getParameter("num");
        System.out.println(num);
        boolean correctAnswer = Integer.parseInt(num) == answer;
        if (correctAnswer) {
            System.out.println("User was correct");
//                response.sendRedirect("/correct");
        } else if (!(correctAnswer)) {
            System.out.println("User was incorrect");

        }

    }
}
