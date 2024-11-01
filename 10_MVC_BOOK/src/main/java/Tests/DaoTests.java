package Tests;
import java.util.List;

import org.junit.jupiter.api.Test;

import Domain.Common.Dao.BookDaoIMPL;
import Domain.Common.Dto.BookDto;

class DaoTests {

	
	@Test
	void bookDaoCRUDTests() throws Exception {
		BookDaoIMPL dao = BookDaoIMPL.getInstance();
		
		dao.insert(new BookDto(123444L,"제하하하","검은수염","12-12"));
	}

	
	@Test
	void bookDaoCRUDTests2() throws Exception {
		BookDaoIMPL dao = BookDaoIMPL.getInstance();
		List<BookDto> list = dao.select(10,10);
		list.forEach(System.out::println);
	}

	
	
	@Test
	void bookDaoCRUDTests3() throws Exception {
		BookDaoIMPL dao = BookDaoIMPL.getInstance();
		int cnt = dao.count();
		System.out.println("CNT : " + cnt);
		
	}
	
	
	@Test
	void bookDaoCRUDTests4() throws Exception {
		BookDaoIMPL dao = BookDaoIMPL.getInstance();
		
		List<BookDto> list = dao.select(0,10,"bookcode","11");
		list.forEach(System.out::println);
	}
	

}
