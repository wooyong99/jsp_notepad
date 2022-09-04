package com.exam_dao;

import java.util.ArrayList;

import com.exam_dto.Product;

public class ProductRepository {
	
	private static ArrayList<Product> product_list=new ArrayList<>();
	public ProductRepository() {
		Product phone = new Product("P1234", "iPhone 13", 1200000);
		phone.setProduct_desc("디스플레이는 6.1인치 19:5:9비율의 2531x1170 해상도를 지원한다.");
		phone.setCategory("Smart Phone");
		phone.setManufact("Apple");
		phone.setProduct_stock(1000);
		phone.setCondition("New");
		
		Product notebook = new Product("P1235", "LG Gram", 2000000);
		notebook.setProduct_desc("13.3인치 해상도를 가지고 FULL HD 프로세스를 지원하며, Intel Core Process를 가진다.");
		notebook.setCategory("Notebook");
		notebook.setManufact("LG");
		notebook.setProduct_stock(1000);
		notebook.setCondition("Refurbished");
		
		Product tablet = new Product("P1236", "iPad Pro 3", 850000);
		tablet.setProduct_desc("디스플레이는 모서리가 둥근 형태로, 기기의 아름다운 곡면 디자인을 반영합니다.");
		tablet.setCategory("tablet");
		tablet.setManufact("Apple");
		tablet.setProduct_stock(500);
		tablet.setCondition("Old");
		
		product_list.add(phone);
		product_list.add(notebook);
		product_list.add(tablet);
	}
	
	public ArrayList<Product> getAllProducts(){
		return product_list;
	}
	// 매개변수 Id 값으로 Product를 return 하는 메소드.
	public Product getProductById(String id) {
		Product rs=null;
		for(Product product:product_list) {
			if(product.getProduct_Id().equals(id)) {
				rs=product;
				break;
			}
		}return rs;
	}

}
