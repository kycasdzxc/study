package exception;

public class RangeException extends RuntimeException {
	
	private static final long serialVersionUID = 850410339520311903L;

	public RangeException(int start, int end) {
		super(String.format("값의 범위를 %d ~ %d로 지정하세요.", start, end));
	}
	
}
