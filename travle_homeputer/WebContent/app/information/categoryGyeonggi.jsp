<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.travle.app.information.dao.Product"%>
<%@ page import="java.util.ArrayList"%>
<jsp:useBean id="productDAO"
	class="com.travle.app.information.dao.ProductRepository"
	scope="session" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경기도</title>
<script>
	function addToCart() {
		if (confirm("상품을 찜하기에 추가하시겠습니까?")) {
			document.addForm.submit();

		} else {
			document.addForm.reset();
		}
	}
</script>
<style>
.jumbotron {
	background-image: url('images/index_main.jpg');
	background-size: cover;
	color: green;
}
</style>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="../../assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/templatemo.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/custom.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fontawesome.min.css">


</head>
<body>

	<jsp:include page="/header.jsp" />

	<!-- Modal -->
	<div class="modal fade bg-white" id="templatemo_search" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="w-100 pt-1 mb-5 text-right">
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<form action="" method="get"
				class="modal-content modal-body border-0 p-0">
				<div class="input-group mb-2">
					<input type="text" class="form-control" id="inputModalSearch"
						name="q" placeholder="Search ...">
					<button type="submit"
						class="input-group-text bg-success text-light">
						<i class="fa fa-fw fa-search text-white"></i>
					</button>
				</div>
			</form>
		</div>
	</div>
	<!-- 알수없는 부분 끝 -->


	<!-- Start Content -->


	<!--  로직 -->

	<div class="jumbotron">
		<div class="container">
			<h3 class="display-3">여행지 목록</h3>
		</div>
	</div>
	<%
      ArrayList<Product> listOfProducts = productDAO.getAllProducts();
	  System.out.print(listOfProducts.get(0).getPname());
   %>
	<div class="container">
		<div class="row" align="center">
			<%
            for (int i = 0; i < listOfProducts.size(); i++) {
               Product product = listOfProducts.get(i);
         %>
			<div class="col-md-4">
				<img src="../../assets/img/cGyeonggi/<%=product.getFilename() %>"
					style="width: 100%">
				<h3><%= product.getPname() %></h3>
				<p>
					<%= product.getDescription() %>
				<p>
					<a href="./<%=product.getUrlname()%>.jsp" class="btn btn-secondary"
						role="button">상세 정보 &raquo;</a><br>
				<form name="addForm" action="./addChoice.jsp?id=<%=product.getProductId() %>" method="post">
					<p>
						<a href="" onclick="addToCart()" class="btn btn-secondary"
							role="button" style="background-color: green; color: white">찜하기
							&raquo;</a>
					<p>
						<a href=../mypageChoice/cart.jsp class="btn btn-secondary"
							role="button" style="color: white; background-color: purple">찜
							목록&raquo;</a>
				</form>
			</div>
			<%
            }
         %>
		</div>
	</div>


	<jsp:include page="/footer.jsp" />
	<!-- Start Script -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/Sassets/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/templatemo.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/custom.js"></script>
	<!-- End Script -->
</body>
</html>