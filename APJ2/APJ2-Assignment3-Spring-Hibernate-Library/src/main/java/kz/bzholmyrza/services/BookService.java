package kz.bzholmyrza.services;

import kz.bzholmyrza.dao.BookDAO;
import kz.bzholmyrza.models.Book;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class BookService {
    private BookDAO bookDao = new BookDAO();

    public BookService() {}

    public Book findBookByIsbn(String isbn) {
        return bookDao.findByIsbn(isbn);
    }

    public void saveBook(Book book) {
        bookDao.save(book);
    }

    public void updateBook(String isbn, Book book) {
        bookDao.update(isbn, book);
    }

    public void deleteBook(String isbn) {
        bookDao.delete(findBookByIsbn(isbn));
    }

    public List<Book> findAllBooks() {
        return bookDao.findAll();
    }

}
