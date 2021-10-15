package kz.bzholmyrza.dao;

import kz.bzholmyrza.models.Book;
import kz.bzholmyrza.models.User;
import kz.bzholmyrza.utils.HibernateSessionFactoryUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import java.sql.*;
import java.util.List;

@Component
public class UserDAO {

    @Autowired
    public UserDAO() {}

    public List<User> findAll() {
        List<User> users = (List<User>)  HibernateSessionFactoryUtil.getSessionFactory().openSession().createQuery("From User").list();
        return users;
    }

    public User findById(int id) {
        return HibernateSessionFactoryUtil.getSessionFactory().openSession().get(User.class, id);
    }

    public User findByEmailAndPassword(String email, String password) {
        String hql = "FROM User u WHERE u.email = :email and u.password = :password";
        Query query = HibernateSessionFactoryUtil.getSessionFactory().openSession().createQuery(hql);
        query.setParameter("email", email);
        query.setParameter("password", password);
        User user = (User) query.getSingleResult();
        return user;
    }

    public void save(User user) {
        Session session = HibernateSessionFactoryUtil.getSessionFactory().openSession();
        Transaction tx1 = session.beginTransaction();
        session.save(user);
        tx1.commit();
        session.close();
    }

    public void delete(User user) {
        Session session = HibernateSessionFactoryUtil.getSessionFactory().openSession();
        Transaction tx1 = session.beginTransaction();
        session.delete(user);
        tx1.commit();
        session.close();
    }

    public Book findBookByIsbn(String isbn) {
        return HibernateSessionFactoryUtil.getSessionFactory().openSession().get(Book.class, isbn);
    }

    public void update(int id, User user) {
        try{
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "postgres");
            PreparedStatement ps = con.prepareStatement("UPDATE Users SET name = ?, email = ?, password = ? WHERE id = ?");
            ps.setString(1,user.getFullName());
            ps.setString(2,user.getEmail());
            ps.setString(3,user.getPassword());
            ps.setInt(4,id);
            ps.executeUpdate();
            ps.close();
        }
        catch (ClassNotFoundException cl) {
            System.out.println(cl.getMessage());
        }
        catch (SQLException sqle) {
            System.out.println(sqle.getMessage());
        }
    }
}
