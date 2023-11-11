package colleges.com.Exception;

@SuppressWarnings("serial")
public class CollegeException extends RuntimeException{
	
	public CollegeException() {
		
	}
	
	public CollegeException(String msg) {
		super(msg);
	}
}
