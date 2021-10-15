package kz.bzholmyrza.models;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(name = "books")
public class Book {
    @Id
    @NotEmpty(message = "Full Name should not be empty")
    private String isbn;
    @NotEmpty(message = "Full Name should not be empty")
    @Size(min = 2, max = 60, message = "Name should be between 2 and 60 characters")
    private String name;

    @Size(min = 3, max = 10, message = "Name should be between 3 and 10 characters")
    private String author;
    @Column(name = "copies")
    private int countOfCopies;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;
    private String url;

    public Book(){}

    public Book(String isbn, String name, String author, int countOfCopies) {
        this.isbn = isbn;
        this.name = name;
        this.author = author;
        this.countOfCopies = countOfCopies;
    }

    public Book(String isbn, String name, String author, int countOfCopies, String url) {
        this.isbn = isbn;
        this.name = name;
        this.author = author;
        this.countOfCopies = countOfCopies;
        this.url = url;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getCountOfCopies() {
        return countOfCopies;
    }

    public void setCountOfCopies(int countOfCopies) {
        this.countOfCopies = countOfCopies;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
