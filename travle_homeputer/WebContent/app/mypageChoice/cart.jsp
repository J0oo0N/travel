<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.travle.app.information.dao.Product" %>
<%@ page import="com.travle.app.information.dao.ProductRepository" %> 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="../../assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="../../assets/css/bootstrap.min.css">
<link rel="stylesheet" href="../../assets/css/templatemo.css">
<link rel="stylesheet" href="../../assets/css/custom.css">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="../../assets/css/fontawesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<%
	String cartId = session.getId();
%>
<meta charset="UTF-8">
<title>장바구니</title>
</head>
<body>
   <jsp:include page="/header.jsp" />
   <div class="jumbtron" style = "margin: 100px">
      <div class="container" style = "padding: 0px 40px 40px 40px; color : #28A745">
         <h2>나의 찜 목록</h2>
      </div>
   <div class="container">
      <div class="row">
         <table width="100%">
            <tr>
               <td align="right"><a href="./deleteCart.jsp?cartId=<%= cartId %>" class="btn btn-danger">삭제하기</a></td>            
               </tr>
         </table>
      </div>
   </div>
   <div sytle="padding-top: 50px">
      <table class="table table-hover">
         <tr>
            <th>상품</th>
            <th>비고</th>
         </tr>
         <%
            int sum = 0;
         ArrayList<Product> cartList = (ArrayList<Product>)session.getAttribute("cartlist");
         if(cartList==null) {
            cartList = new ArrayList<Product>();
         }
         for(int i = 0; i < cartList.size(); i++) { // 상품 리스트 하나씩 출력하기
            Product product = cartList.get(i);
         %>
         <tr>
            <td><%=product.getProductId() %> - <%=product.getPname() %>
            <td><a href="./removeCart.jsp?id=<%=product.getProductId() %>" class="badge badge-danger">삭제</a></td>
         </tr>
         <%
         }
         %>
      </table>
      <a href="/app/information/categoryGyeonggi.jsp" class="btn btn-secondary"> &laquo; 쇼핑 계속하기</a> 
   </div>
   <hr>
   </div>
   
   <jsp:include page="/footer.jsp" />
</body>
</html>