package colleges.com.repository;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;

import colleges.com.enitiy.CollegesEnitiy;

public interface CollegesRepository extends JpaRepository<CollegesEnitiy, Serializable> {

}
