package colleges.com.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import colleges.com.Exception.CollegeException;
import colleges.com.dto.College;
import colleges.com.enitiy.CollegesEnitiy;
import colleges.com.repository.CollegesRepository;
import colleges.com.service.CollegeService;

@Service
public class CollegesImp implements CollegeService{

	@Autowired
	private CollegesRepository collegesRepository;
	
	
	
	@Override
	public boolean saveCollege(College c) {
		boolean isSave=false;
		try {
			CollegesEnitiy enitiy = new CollegesEnitiy();
			BeanUtils.copyProperties(c, enitiy);
			CollegesEnitiy saveEnitiy= collegesRepository.save(enitiy);
			if (saveEnitiy.getCollegeId()!=null) {
				isSave = true;
			}
		} catch (Exception e) {
			throw new CollegeException("Save Failed");
		}
		return isSave;
	}

	@Override
	public List<College> getAllCollege() {
		List<CollegesEnitiy> enitiys = collegesRepository.findAll();
		return enitiys.stream().map(entity ->{
			College college = new College();
			BeanUtils.copyProperties(entity, college);
			return college;
		}).collect(Collectors.toList());
	}

	@Override
	public College getCollegeById(Integer collegeId) {
		
		return null;
	}

	@Override
	public boolean deleteCollege(Integer collegeId) {
		
		return false;
	}

}
