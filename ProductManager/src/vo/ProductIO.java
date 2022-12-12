package vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter @Setter
@AllArgsConstructor @NoArgsConstructor
public class ProductIO {
	
	private int num;		// 입출고번호
	private String id;		// 상품아이디
	private String date;	// 입출고날짜
	private int amount;		// 수량
	private String status;	// 입출고
	
}
