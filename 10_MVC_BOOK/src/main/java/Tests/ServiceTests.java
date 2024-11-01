package Tests;





import org.junit.jupiter.api.Test;

import Domain.Common.Dto.BookDto;
import Domain.Common.Service.BookServiceImpl;

class ServiceTests {

	@Test
	void bookServiceTests() throws Exception {
		
		BookServiceImpl service = BookServiceImpl.getInstance();
		service.bookRegistration(new BookDto(222222,"도서2","출판사2","4455"));
		
	}

}

