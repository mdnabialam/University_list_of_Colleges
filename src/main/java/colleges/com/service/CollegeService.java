package colleges.com.service;

import java.util.List;

import colleges.com.dto.College;

public interface CollegeService {
	
		boolean saveCollege(College c);
		List<College> getAllCollege();
		College getCollegeById(Integer collegeId);
		boolean deleteCollege (Integer collegeId);
}
