package Tests;

import org.junit.jupiter.api.Test;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import Domain.Common.Dto.BookDto;
import Domain.Common.Dto.UserDto;
import Domain.Common.Service.BookServiceImpl;
import Domain.Common.Service.UserServiceImpl;

class ServiceTests {

	@Test
	void bookServiceTests() throws Exception {
		
		BookServiceImpl service = BookServiceImpl.getInstance();
		service.bookRegistration(new BookDto(222222,"도서2","출판사2","4455"));
		
	}

	@Test
	void userServiceTests() throws Exception {
		
		UserServiceImpl service = UserServiceImpl.getInstance();
		service.memberJoin(new UserDto("222222","도서2","출판사2",false));
		
	}
	
	@Test
	void userServiceTests2() throws Exception {
		
		BCryptPasswordEncoder bc= new BCryptPasswordEncoder();
		System.out.println("bc" + bc);
		String rawPw = "1234";
		
		String cryptPw= bc.encode(rawPw);
		System.out.println(cryptPw);
		
		System.out.println("이거 맞음 ? " + bc.matches(rawPw, cryptPw));
	}
	
}

