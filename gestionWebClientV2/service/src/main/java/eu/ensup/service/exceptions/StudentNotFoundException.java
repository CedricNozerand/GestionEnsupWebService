package eu.ensup.service.exceptions;

public class StudentNotFoundException extends Exception{

	private static final long serialVersionUID = 1L;

	public StudentNotFoundException() {
        this( "Erreur lors de la lecture d'un étudiant" );
    }

    public StudentNotFoundException( String message ) {
        super( message );
    }
    
    public StudentNotFoundException( String message, Throwable cause ) {
        super( message, cause );
    }
}
