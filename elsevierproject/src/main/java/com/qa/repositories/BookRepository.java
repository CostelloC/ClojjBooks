package com.qa.repositories;


import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.qa.models.Address;
import com.qa.models.Book;
import com.qa.models.Customer;

@Repository
public interface BookRepository extends CrudRepository<Book, Integer>{
	@Query("SELECT a from Book a WHERE a.bookId = :bookId")
	public Book findBookById(@Param("bookId") int bookId);
	
	@Query("SELECT a from Book a WHERE a.title = :title")
	public Book findBookByTitle(@Param("title") String title);
	
//	@Query("INSERT INTO Book VALUES (1, 'image','o','j', 'description', 'ebook', 'format', 5, 'paper', 10.0, 'publisheddate', 'publisher')")
//	public Book addBook(@Param("bookId") int bookId, @Param("image") String image,@Param("title") String title);
}
