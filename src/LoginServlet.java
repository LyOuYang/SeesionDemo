import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet",urlPatterns = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //对请求到的值进行编码
        request.setCharacterEncoding("UTF-8");
        //对发出去的值进行编码
        response.setContentType("text/html;charset = utf-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("ouyang")){
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("username",username);
            Cookie cookie = new Cookie("username",username);
            cookie.setMaxAge(60);
            response.addCookie(cookie);
            //这里使用重传定向使得其回到最开始的页面，用户看到的也是最开始的页面，不会看到servlet处理页面
            response.sendRedirect("/welcome.jsp");
        }else{
            request.setAttribute("warn","登陆失败，请重新登陆");
            //这里使用转发，这样在一个request里面可以保存着错误信息
            request.getRequestDispatcher("/login.jsp").forward(request,response);

        }
        response.getWriter().println("123");
    }
}
