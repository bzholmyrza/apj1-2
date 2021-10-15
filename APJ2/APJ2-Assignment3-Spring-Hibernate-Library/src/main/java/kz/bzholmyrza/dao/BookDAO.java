package kz.bzholmyrza.dao;

import kz.bzholmyrza.models.Book;
import kz.bzholmyrza.models.User;
import kz.bzholmyrza.utils.HibernateSessionFactoryUtil;
import org.springframework.stereotype.Component;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

@Component
public class BookDAO {

    public Book findByIsbn(String isbn) {
        return HibernateSessionFactoryUtil.getSessionFactory().openSession().get(Book.class, isbn);
    }

    public void save(Book book) {
        Session session = HibernateSessionFactoryUtil.getSessionFactory().openSession();
        Transaction tx1 = session.beginTransaction();
        session.save(book);
        tx1.commit();
        session.close();
    }

    public void update(String isbn, Book book) {
        try{
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "postgres");
            PreparedStatement ps = con.prepareStatement("UPDATE Books SET isbn = ?, name = ?, author = ?, " +
                    "copies = ?, url = ? WHERE isbn = ?");
            ps.setString(1, book.getIsbn());
            ps.setString(2, book.getName());
            ps.setString(3, book.getAuthor());
            ps.setInt(4, book.getCountOfCopies());
            ps.setString(5, book.getUrl());
            ps.setString(6, isbn);
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

    public void delete(Book book) {
        Session session = HibernateSessionFactoryUtil.getSessionFactory().openSession();
        Transaction tx1 = session.beginTransaction();
        session.delete(book);
        tx1.commit();
        session.close();
    }

    public User findUserById (int id) {
        return HibernateSessionFactoryUtil.getSessionFactory().openSession().get(User.class, id);
    }

    public List<Book> findAll() {
        List<Book> books = (List<Book>) HibernateSessionFactoryUtil.getSessionFactory().openSession().createQuery("From Book").list();
        return books;
    }
}