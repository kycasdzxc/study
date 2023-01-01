package vo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import static utils.StringUtil.*;

@Getter @Setter
@AllArgsConstructor @NoArgsConstructor
public class Product implements Serializable {
	
	private static final long serialVersionUID = 27185651498470938L;

	private String id;		// 상품아이디
	private String name;	// 상품명
	private int price;		// 가격
	private String detail;	// 상세정보
	private int stock;		// 재고
	
	@Override
	public String toString() {
		return "[아이디 : " + convert(id, 8) + ", 상품명 : " + convert(name, 10) + ", 가격 : " + convert(price+"", 8) + ", 상세정보 : " + convert(detail, 8) + ", 재고 : " + convert(stock+"", 3) + "]";
	}
	
}
