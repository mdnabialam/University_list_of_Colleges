package colleges.com.restcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import colleges.com.dto.College;
import colleges.com.service.CollegeService;

@Controller

public class CollegesControllers {
	
	@Autowired
	private CollegeService collegeService;
	
	@GetMapping(value = {"/","/addCollege"})
	public String loadFrom(Model model) {
		College college= new College();
		model.addAttribute("college", college);
		return "college";
	}
	
	@PostMapping(value = "/saveCollege")
	public String handSubmitBtn(@ModelAttribute("college") College c,Model model) {
		boolean isSave=collegeService.saveCollege(c);
		if (isSave) {
			model.addAttribute("succMsg", "Successful Added Your College Name");
		} else {
			model.addAttribute("errMsg", " Failed Not Added Your College  ");
		}
		
		return "college";
	}
	
}
