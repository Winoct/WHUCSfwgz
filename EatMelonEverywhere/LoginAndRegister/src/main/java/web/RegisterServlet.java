package web;

import dao.UserDAO;
import dao.UserDAOimpl;
import entity.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

public class RegisterServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //处理请求的一般步骤是
        //1.接收参数
        //用post方法时 避免乱码
        req.setCharacterEncoding("UTF-8");
        User user=new User();
        user.setUsername(req.getParameter("username"));
        user.setPassword(req.getParameter("password1"));
        user.setNickname(req.getParameter("nickName"));
        user.setPhoneNumber(req.getParameter("phoneNumber"));
        user.setSex(req.getParameter("sex"));
        user.setMailAddress(req.getParameter("mailAddress"));
        user.setAdmin(false);
        user.setValid(true);
        user.setPoint(0);
        user.setCreatedTime(new Date(System.currentTimeMillis()));
        user.setReputation(100);
        UserDAO userDAO=new UserDAOimpl();
        int info=userDAO.addUser(user,req.getParameter("password2"));
        // 1 用户名不符合规范 2 密码不符合规范 3 密码不相同 4 用户名重复 5 邮箱重复 6 手机号重复
        int error=1;
        if((info&error)!=0) {
            req.setAttribute("nameError","1");
        }
        error<<=1;
        if((info&error)!=0) {
            req.setAttribute("passwordError",1);
        }
        error<<=1;
        if((info&error)!=0) {
            req.setAttribute("passwordDifferent",1);
        }
        error<<=1;
        if((info&error)!=0) {
            req.setAttribute("nameExist",1);
        }
        error<<=1;
        if((info&error)!=0){
            req.setAttribute("emailExist",1);
        }
        error<<=1;
        if((info&error)!=0) {
            req.setAttribute("phoneNumberExist",1);
        }
        if(info==0) {
            System.out.println("信息正确无误");
        }
        else{
            req.getRequestDispatcher("register.jsp").forward(req,resp);
        }
    }
}
