package mx.ipn.escom.sgps.util.exception;

public class AccessPropertyException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public AccessPropertyException() {
		super();
	}

	public AccessPropertyException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public AccessPropertyException(String message, Throwable cause) {
		super(message, cause);
	}

	public AccessPropertyException(String message) {
		super(message);
	}

	public AccessPropertyException(Throwable cause) {
		super(cause);
	}
}
