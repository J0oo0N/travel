package com.travle.app.information.dao;

import java.util.ArrayList;

import com.travle.app.information.dao.Product;

public class ProductRepository {
   
   private ArrayList<Product> listOfProducts = new ArrayList<Product>();
   private static ProductRepository instance = new ProductRepository();
   
   public static ProductRepository getInstance() {
      return instance;
   }
   
   public ProductRepository() {
      
	   Product everland = new Product("P1234", "��������"); 
	      everland.setDescription("ȯ���� ���� ���������! ��մ� ���̱��� �پ��� ü����� �غ�Ǿ� �ִ� ������ ��");
	      everland.setCategory("������");
	      everland.setFilename("everland.jpg");
	      everland.setUrlname("informEverland");
	   
	      Product cave = new Product("P1235", "������");
	      cave.setDescription("100�� ���� ���� ���, ������ �ִ� �׸���ũ�� ������");
	      cave.setCategory("������");
	      cave.setFilename("cave.jpg");
	      cave.setUrlname("informCave");
	      
	      Product tteokbokki= new Product("P1236", "���� ������");
	      tteokbokki.setDescription("���ִ� �ع� �ж����� ������, ���� ������ ���� ����");
	      tteokbokki.setCategory("����");
	      tteokbokki.setFilename("tteokbokki.jpg");
	      tteokbokki.setUrlname("informTteokbokki");
	      
	      listOfProducts.add(everland);
	      listOfProducts.add(cave);
	      listOfProducts.add(tteokbokki);
   }
   
   public ArrayList<Product> getAllProducts() {
      return listOfProducts;
   }
   
   public Product getProductById(String productId) {
      Product productById = null;
      
      for(int i = 0; i<listOfProducts.size(); i++) {
         Product product = listOfProducts.get(i);
         if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
            productById = product;
            break;
         }
      }
      return productById;
   }
}