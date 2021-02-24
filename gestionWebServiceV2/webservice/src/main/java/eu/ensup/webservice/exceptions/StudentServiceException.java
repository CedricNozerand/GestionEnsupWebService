package eu.ensup.webservice.exceptions;

public class StudentServiceException extends Exception {

	private static final long serialVersionUID = 1L;

	public StudentServiceException() {
        this( "Erreur sur la couche service du WebClient" );
    }

    public StudentServiceException( String message ) {
        super( message );
    }
    
    public StudentServiceException( String message, Throwable cause ) {
        super( message, cause );
    }
}
