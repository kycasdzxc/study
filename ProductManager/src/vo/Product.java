package vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter @Setter
@AllArgsConstructor @NoArgsConstructor
public class Product {
	
	private String id;		// 상품아이디
	private String name;	// 상품명
	private int price;		// 가격
	private String detail;	// 상세정보
	private int stock;		// 재고
	
}
