package view;

import service.ProductIOService;
import service.ProductService;
import utils.StringUtil;

public class ProductMenu {
	
	ProductService service = new ProductService();
	ProductIOService serviceIO = new ProductIOService();
	
	public void start() {
		boolean flag = true;
		
		while(flag) {
			try {
				int index = StringUtil.nextInt("1. 상품 전체 조회 2. 상품 추가 3. 상품 수정 4. 상품 삭제 5. 상품 검색 6. 종료 > ", 1, 6);
				
				switch(index) {
					case 1:
						System.out.println("상품 전체 조회");
						service.list(1);
						break;
						
					case 2:
						System.out.println("상품 추가");
						service.register();
						serviceIO.register();
						break;
						
					case 3:
						System.out.println("상품 수정");
						service.modify();
						break;
						
					case 4:
						System.out.println("상품 삭제");
						service.delete();
						break;
						
					case 5:
						System.out.println("상품 검색");
						service.search();
						break;
						
					case 6:
						flag = false;
						break;
				}
			} catch (NumberFormatException e) {
				System.err.println(" > 숫자 형식으로 입력해주세요.");
				
			} catch (RuntimeException e) {
				System.err.println(" > " + e.getMessage());
			}
		}
	}
	
}
