package dao;

import entity.User;

import java.sql.SQLException;

public interface UserDAO {
    public int addUser(User user, String password2);
}
