package colleges.com.Exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalException {
	
	
	@ExceptionHandler(value = CollegeException.class)
	public String globalHandalExc() {
		return "error";
	}
	
	@ExceptionHandler(value = NumberFormatException.class)
	public String handelNPE() {
		return "error";
	}
}
