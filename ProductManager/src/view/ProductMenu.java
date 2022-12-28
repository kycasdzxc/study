package view;

import java.util.Scanner;

import service.ProductIOService;
import service.ProductService;

public class ProductMenu {
	
	Scanner sc = new Scanner(System.in);

	ProductService service = new ProductService();
	ProductIOService serviceIO = new ProductIOService();
	
	public void start() {
		boolean flag = true;
		
		while(flag) {
			System.out.println("1. 상품 전체 조회 2. 상품 추가 3. 상품 수정 4. 상품 삭제 5. 상품 검색 6. 종료");
			int index = Integer.parseInt(sc.nextLine());
			
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
		}
	}
	
}
