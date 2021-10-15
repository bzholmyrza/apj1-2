package kz.bzholmyrza.models;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "name")
    @NotEmpty(message = "Full Name should not be empty")
    @Size(min = 2, max = 60, message = "Name should be between 2 and 60 characters")
    private String fullName;
    @NotEmpty(message = "Email should not be empty")
    @Email(message = "Email should be valid")
    private String email;
    private int role;
    @Size(min = 3, max = 10, message = "Name should be between 3 and 10 characters")
    private String password;

    public User(){}

    public User(String fullName, String email, int role, String password) {
        this.fullName = fullName;
        this.email = email;
        this.role = role;
        this.password = password;
    }

    public void addBook(Book book) {
        book.setUser(this);
    }

    public int getId() {
        return id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
