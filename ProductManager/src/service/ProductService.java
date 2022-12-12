package service;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;

import vo.Product;

@SuppressWarnings("unchecked")
public class ProductService {
	// 상품 데이터
	List<Product> products = new ArrayList<Product>();
	
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
	
	// 상품 전체 조회
	public void list() {
		
	}
	
	// 상품 추가
	public void register() {
		
		save();
	}
	
	// 상품 수정
	public void modify() {
		
		save();
	}
	
	// 상품 삭제
	public void delete() {
		
		save();
	}
	
	// 상품 검색
	public void search() {
		
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
