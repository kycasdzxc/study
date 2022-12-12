package service;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;

import vo.ProductIO;

@SuppressWarnings("unchecked")
public class ProductIOService {
	// 상품 데이터
	List<ProductIO> products = new ArrayList<ProductIO>();
	
	{
		try {
			ObjectInputStream ois = new ObjectInputStream(new FileInputStream("productsIO.ser"));
			products = (List<ProductIO>) ois.readObject();
			System.out.println("입출고 데이터 불러오기 완료");
			ois.close();
		} catch (FileNotFoundException e) {
			products.add(new ProductIO(1 ,"nb_ss7", "19/07/01", 30, "입고"));
			products.add(new ProductIO(2 ,"nb_ss7", "19/07/02",  3, "출고"));
			products.add(new ProductIO(3 ,"pc_ibm", "19/07/02", 10, "입고"));
			System.out.println("입출고 데이터 초기화 완료");
			
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
		oos = new ObjectOutputStream(new FileOutputStream("productsIO.ser"));
		oos.writeObject(products);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
