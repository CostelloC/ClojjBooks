package com.qa;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.qa.controllers.BookController;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SmokeTest {
	@Autowired
	private BookController addressBookController;
	    
	@Test
	public void addressBookContexLoads() throws Exception {
		assertThat(addressBookController).isNotNull();
	}
	@Autowired
	private BookController bookController;
	    
	@Test
	public void bookContexLoads() throws Exception {
		assertThat(bookController).isNotNull();
	}
	
	@Autowired
	private BookController cartController;
	    
	@Test
	public void cartContexLoads() throws Exception {
		assertThat(cartController).isNotNull();
	}
	
	@Autowired
	private BookController checkoutController;
	    
	@Test
	public void checkoutContexLoads() throws Exception {
		assertThat(checkoutController).isNotNull();
	}
	
	@Autowired
	private BookController customerController;
	    
	@Test
	public void customerContexLoads() throws Exception {
		assertThat(customerController).isNotNull();
	}
}
