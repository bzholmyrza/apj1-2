package kz.bzholmyrza.services;

import kz.bzholmyrza.dao.UserDAO;
import kz.bzholmyrza.models.Book;
import kz.bzholmyrza.models.User;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class UserService {
    private UserDAO usersDao = new UserDAO();

    public User findUserById(int id) {
        return usersDao.findById(id);
    }

    public void saveUser(User user) {
        usersDao.save(user);
    }

    public void deleteUser(int id) {
        usersDao.delete(usersDao.findById(id));
    }

    public void updateUser(int id, User user) {
        usersDao.update(id, user);
    }

    public List<User> findAllUsers() {
        return usersDao.findAll();
    }

    public Book findBookByIsbn(String isbn) {
        return usersDao.findBookByIsbn(isbn);
    }

    public User findUserByEmailAndPassword(String email, String password) {
        return usersDao.findByEmailAndPassword(email, password);
    }
}
