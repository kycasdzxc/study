package vo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter @Setter
@AllArgsConstructor @NoArgsConstructor
public class ProductIO implements Serializable {
	
	private static final long serialVersionUID = -1402999425856045722L;

	private int num;		// 입출고번호
	private String id;		// 상품아이디
	private String date;	// 입출고날짜
	private int amount;		// 수량
	private String status;	// 입출고

	@Override
	public String toString() {
		return "ProductIO [num=" + num + ", id=" + id + ", date=" + date + ", amount=" + amount + ", status=" + status + "]";
	}
	
}
