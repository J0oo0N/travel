<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.travle.app.information.dao.Product" %>
<%@ page import="com.travle.app.information.dao.ProductRepository" %>

<% 
	String id = request.getParameter("id");
	System.out.print(id);
	if(id==null || id.trim().equals("")) {
	response.sendRedirect("products.jsp");
	return;
	}
   
   ProductRepository dao = ProductRepository.getInstance();
   
   Product product = dao.getProductById(id);
   if(product == null) {
      response.sendRedirect("exceptionNoProductId.jsp");
   }
   
   ArrayList<Product> goodsList = dao.getAllProducts();
   Product goods = new Product();
   for(int i=0; i<goodsList.size(); i++) {
      goods = goodsList.get(i);
      // 비교된 객체값(ex/phone객체)을 dto에 담아줌
      if(goods.getProductId().equals(id)) {
         break;
      }
   }
   
   ArrayList<Product> list = (ArrayList<Product>)session.getAttribute("cartlist");
//    System.out.println(list.get(0).getPname());
   if(list==null) {
	   list = new ArrayList<Product>();
      session.setAttribute("cartlist", list);
   }
   
   response.sendRedirect( product.getUrlname()+".jsp?id=" +id);
%>
