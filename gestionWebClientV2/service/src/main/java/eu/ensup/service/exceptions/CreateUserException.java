package eu.ensup.service.exceptions;

public class CreateUserException extends Exception {

	private static final long serialVersionUID = 1L;

	public CreateUserException() {
        this( "Erreur lors de la création d'un nouvel étudiant" );
    }

    public CreateUserException( String message ) {
        super( message );
    }
    
    public CreateUserException( String message, Throwable cause ) {
        super( message, cause );
    }
}
