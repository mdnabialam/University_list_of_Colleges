package colleges.com.dto;

import java.io.Serializable;

import lombok.Data;

@SuppressWarnings("serial")
@Data
public class College implements Serializable {

	private Integer collegeId;
	private Integer UniversityId;
	private String universityName;
	private String Universitystates;
	private String collegeCode;
	private String collegeName;
	
	
}
