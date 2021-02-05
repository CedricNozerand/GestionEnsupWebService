package eu.ensup.service;

import java.util.List;

public interface INoteService {

	List<Object[]> getLevelsRepartition();
	
	void getStudentsByLevel();
}
