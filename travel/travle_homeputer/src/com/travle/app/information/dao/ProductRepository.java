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
      
	   Product everland = new Product("P1234", "에버랜드"); 
	      everland.setDescription("환상의 나라 에버랜드로! 재밌는 놀이구와 다양한 체험관이 준비되어 있는 용인의 명물");
	      everland.setCategory("관광지");
	      everland.setFilename("everland.jpg");
	      everland.setUrlname("informEverland");
	   
	      Product cave = new Product("P1235", "광명동굴");
	      cave.setDescription("100년 전통 동굴 명소, 수도권 최대 테마파크인 광명동굴");
	      cave.setCategory("관광지");
	      cave.setFilename("cave.jpg");
	      cave.setUrlname("informCave");
	      
	      Product tteokbokki= new Product("P1236", "진미 떡볶이");
	      tteokbokki.setDescription("맛있는 해물 밀떡볶이 전문점, 진미 떡볶이 성남 본점");
	      tteokbokki.setCategory("맛집");
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