package test;

import org.junit.Test;

import cn.dzu.bookstore.book.dao.BookDao;

public class BookTest {
	@Test
   public void test(){
	   BookDao bookDao=new BookDao();
	   System.out.println(bookDao.findAll());
   }
}
