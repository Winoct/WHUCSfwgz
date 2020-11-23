package dao;

import entity.User;

import java.sql.*;
import java.util.regex.Pattern;

// 1 用户名不符合规范 2 密码不符合规范 3 密码不相同 4 用户名重复 5 邮箱重复 6 手机号重复
public class UserDAOimpl implements UserDAO {

    @Override
    public int addUser(User user,String password2)  {
        int ret=0;
        int error=1;
        if(!Pattern.matches("^[A-Za-z0-9_-]{8,20}$",user.getUsername())) ret+=error;
        error<<=1;
        if(!Pattern.matches("^[\\w_]{8,16}",user.getPassword())) ret+=error;
        error<<=1;
        if(!user.getPassword().equals(password2)) ret+=error;
        error<<=1;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/EasyRent";
            String username = "root";
            String password = "Mysql+1s";
            Connection connection = DriverManager.getConnection(url, username, password);
            Statement statement = connection.createStatement();
            String sql="SELECT * FROM user WHERE username=\""+user.getUsername()+"\";";
            ResultSet resultSet = statement.executeQuery(sql);
            if(resultSet.next()) {
                statement.close();
                connection.close();
                ret+=error;
                return ret;
            }
            error<<=1;
            sql="SELECT * FROM user WHERE mailAddress=\""+user.getMailAddress()+"\";";
            resultSet = statement.executeQuery(sql);
            if(resultSet.next()) {
                statement.close();
                connection.close();
                ret+=error;
                return ret;
            }
            error<<=1;
            sql="SELECT * FROM user WHERE phoneNumber=\""+user.getPhoneNumber()+"\";";
            resultSet = statement.executeQuery(sql);
            if(resultSet.next()) {
                statement.close();
                connection.close();
                ret+=error;
                return ret;
            }
            error<<=1;
            if(ret!=0) return ret;
            sql = "INSERT INTO user values \n" +
                    " ( 0, \"" + user.getUsername() + "\", \"" + user.getPassword() +
                    "\", \"" + user.getNickname() + "\", \"" + user.getPhoneNumber() +
                    "\", \"" + user.getSex() + "\", \"" + user.getMailAddress() +
                    "\", true, false, 0, now(), 100);";
            System.out.println(sql);
            statement.execute(sql);
            statement.close();
            connection.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

}
