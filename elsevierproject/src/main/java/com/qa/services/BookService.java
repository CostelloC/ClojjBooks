package com.qa.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qa.models.Address;
import com.qa.models.Book;
import com.qa.repositories.BookRepository;

@Service
public class BookService {
	
	@Autowired
	private BookRepository bookRepository;
	
	public Iterable<Book> findAllBooks()
	{
		return bookRepository.findAll();
		
	}
	
	public Book findBookById(int bookId){
		
		return bookRepository.findBookById(bookId);
	}
	
	public Book findBookByTitle(String title){
		
		return bookRepository.findBookByTitle(title);
	}

//	public Book addBook(int bookId,String image,String title){
		
//		return bookRepository.addBook(bookId,image,title);
	//}
}
