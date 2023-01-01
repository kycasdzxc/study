package service;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import static utils.StringUtil.*;
import vo.Product;

@SuppressWarnings("unchecked")
public class ProductService {
	// 상품 데이터
	List<Product> products = new ArrayList<Product>();
	
	Scanner sc = new Scanner(System.in);
	
	{
		try {
			ObjectInputStream ois = new ObjectInputStream(new FileInputStream("products.ser"));
			products = (List<Product>) ois.readObject();
			System.out.println("상품 데이터 불러오기 완료");
			ois.close();
		} catch (FileNotFoundException e) {
			products.add(new Product("nb_ss7",  "삼성노트북", 1570000, "시리즈7", 10));
			products.add(new Product("nb_ama4", "맥북에어",   1200000,  "xcode4", 20));
			products.add(new Product("pc_ibm",  "ibmPC",       750000, "window8",  5));
			System.out.println("상품 데이터 초기화 완료");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		ProductService service = new ProductService();
		int amount = 5;
		int endPage = (service.products.size() / amount) + 1;
		System.out.println(endPage);
	}
	
	// 상품 전체 조회
	public void list(int pageNum) {
		int amount = 5;
		int lastPage = (products.size() / amount) + 1;
		
		int start = amount * (pageNum - 1);
		int end = lastPage > pageNum ? amount * pageNum : (amount * (lastPage - 1) + products.size() % amount);
		
		System.out.println("현재페이지 : " + pageNum + " / 마지막페이지 : " + lastPage + " / 총 상품개수 : " + products.size());
		
		for(int i = start ; i < end ; i++) {
			System.out.println(convert(1 + i + ".", 3) + " " + products.get(i));
		}
		
		int idx = pageNum;
		
		try {
			idx = nextInt("이동할 페이지를 입력해주세요. [이전으로 돌아가기 '0'] > ", 0, lastPage);
		} catch (Exception e) {
			System.err.println(" > " + e.getMessage());
		}
		
		if(idx != 0) {
			list(idx);
		}
	}
	
	// 상품 추가
	public void register() {
		String id = nextLine("상품 ID를 입력해주세요. > ");
		
		if(findBy(id) == null) {
			String name = nextLine("상품명을 입력해주세요. > ");
			int price = nextInt("가격을 입력해주세요. > ", 0, Integer.MAX_VALUE);
			String detail = nextLine("상품정보를 입력해주세요. > ");
			int stock = nextInt("재고를 입력해주세요. > ", 0, Integer.MAX_VALUE);
			
			// Product에 값 세팅
			Product product = new Product();
			product.setId(id);
			product.setName(name);
			product.setPrice(price);
			product.setDetail(detail);
			product.setStock(stock);
			
			products.add(product);
			save();
		} else {
			System.out.println("존재하는 상품 ID입니다.");
		}
	}
	
	// 상품 수정
	public void modify() {
		String id = nextLine("수정할 상품의 ID를 입력해주세요. > ");
		
		Product product = findBy(id);
		
		System.out.println("수정할 항목을 선택해주세요.");
		int num = nextInt("1)상품명 2)가격 3)상품정보 4)재고 > ", 1, 4);
		
		switch (num) {
		case 1:
			String name = nextLine("변경할 상품명 > ");
			product.setName(name);
			break;
			
		case 2:
			int price = nextInt("변경할 가격 > ", 0, Integer.MAX_VALUE);
			product.setPrice(price);
			break;
			
		case 3:
			String detail = nextLine("변경할 상품정보 > ");
			product.setDetail(detail);
			break;
			
		case 4:
			int stock = nextInt("변경할 재고 > ", 0, Integer.MAX_VALUE);
			product.setStock(stock);
			break;
			
		default:
			System.out.println("잘못 입력하셨습니다.");
			break;
		}
		save();
	}
	
	// 상품 삭제
	public void delete() {
		String id = nextLine("삭제할 상품의 ID를 입력해주세요. > ");
		
		int index = findByIndex(id);
		
		if(index != -1) {
			Product product = products.get(index);
			products.remove(index);
			System.out.println("해당 상품이 삭제되었습니다. [ " + product.getName() + " ] ");
			save();
		} else {
			System.out.println("상품 ID가 존재하지 않습니다.");
		}
	}
	
	// 상품 검색
	public void search() {
		String keyword = nextLine("검색할 상품명을 입력해주세요. > ");
		
		StringBuilder sb = new StringBuilder();
		keyword = transWord(keyword);
		
		for(Product p : products) {
			if(transWord(p.getName()).contains(keyword)) {
				sb.append(p).append("\n");
			}
		}
		
		System.out.println(sb);
	}
	
	// 대소문자 통일, 공백 제거
	private String transWord(String word) {
		return word.toLowerCase().trim().replace(" ", "");
	}
	
	// ID로 상품 조회
	private Product findBy(String id) {
		Product product = null;
		
		for(Product p : products) {
			if(id.equals(p.getId())) {
				product = p;
				break;
			}
		}
		return product;
	}
	
	// ID로 상품 index 조회
	private int findByIndex(String id) {
		int index = -1;
		
		for(int i = 0 ; i < products.size() ; i++) {
			if(id.equals(products.get(i).getId())) {
				index = i;
				break;
			}
		}
		return index;
	}
	
	// 데이터 저장
	private void save() {
		ObjectOutputStream oos;
		try {
		oos = new ObjectOutputStream(new FileOutputStream("products.ser"));
		oos.writeObject(products);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
