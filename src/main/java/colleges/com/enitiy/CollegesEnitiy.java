package colleges.com.enitiy;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "Colleges_Info")
public class CollegesEnitiy {
		
	@GeneratedValue(
		    strategy = GenerationType.SEQUENCE,
		    generator = "collegesec"
		    
		)
		@SequenceGenerator(
		    name = "collegesec",
		    allocationSize=1
		)
	
	@Id
	@Column(name = "college_ID")
	private Integer collegeId;
	
	
	@Column(name = "University_Id")
	private Integer UniversityId;
	
	@Column(name = "University_Name")
	private String universityName;
	
	@Column(name = "University_states")
	private String Universitystates;
	
	
	@Column(name = "College_Code")
	private String collegeCode;
	
	@Column(name = "College_Name")
	private String collegeName;
	
	
}
