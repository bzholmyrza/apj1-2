package kz.bzholmyrza.controllers;

import kz.bzholmyrza.models.Book;
import kz.bzholmyrza.services.BookService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import javax.validation.Valid;

@Controller
@RequestMapping("/books")
public class BookController {
    private final BookService bookService;

    public BookController(BookService bookService) {
        this.bookService = bookService;
    }

    @GetMapping()
    public String getAll(Model model) {
        model.addAttribute("books", bookService.findAllBooks());
        return "books/listOfBooks";
    }

    @GetMapping("/{isbn}")
    public String show(@PathVariable("isbn") String isbn, Model model) {
        model.addAttribute("book", bookService.findBookByIsbn(isbn));
        return "books/showBook";
    }

    @GetMapping("new")
    public String newBook(Model model) {
        model.addAttribute("book", new Book());
        return "books/newBook";
    }

    @PostMapping()
    public String create(@ModelAttribute("book") @Valid Book book, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "books/newBook";
        }
        bookService.saveBook(book);
        return "redirect:/books";
    }

    @GetMapping("/{isbn}/edit")
    public String edit(Model model, @PathVariable("isbn") String isbn) {
        model.addAttribute("book", bookService.findBookByIsbn(isbn));
        return "books/editBook";
    }

    @PatchMapping("/{isbn}")
    public String update(@ModelAttribute("book") @Valid Book book, BindingResult bindingResult, @PathVariable("isbn") String isbn) {
        if (bindingResult.hasErrors()){
            return "books/editBook";
        }
        bookService.updateBook(isbn, book);
        return "redirect:/books";
    }

    @DeleteMapping("/{isbn}")
    public String delete(@PathVariable("isbn") String isbn) {
        bookService.deleteBook(isbn);
        return "redirect:/books";
    }
}
