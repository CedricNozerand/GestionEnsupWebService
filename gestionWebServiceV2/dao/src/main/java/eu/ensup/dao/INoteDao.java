package eu.ensup.dao;

import java.util.List;

public interface INoteDao {

	List<Object[]> getLevelsRepartition();
	
	void getStudentsByLevel();
}
