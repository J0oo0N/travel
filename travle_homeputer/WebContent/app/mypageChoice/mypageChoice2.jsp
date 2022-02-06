<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<style>
	img {
		weight: 300px;
		height: 150px;
	}
	
	a:link { 
		text-decoration-line:none 
	}
</style>

<head>
<title>찜하기</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="/assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<link rel="stylesheet" href="/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="/assets/css/templatemo.css">
<link rel="stylesheet" href="/assets/css/custom.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="/assets/css/fontawesome.min.css">
    
</head>

<jsp:include page="/header.jsp"/>

<body>
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



	<section class="bg-success py-5">
		<div class="container">
			<div class="row align-items-center py-5">
				<div class="col-md-8 text-white">
					<h1>행여나</h1>
					<p>행복을 위한 나의 선택, 행여나</p>
				</div>
				<div class="col-md-4">
					<img src=>
				</div>
			</div>
		</div>
	</section>
	<!-- Close Banner -->

	<!-- Start Section -->
	<section class="container py-5">
		<div class="row text-center pt-5 pb-3">
			<div class="col-lg-6 m-auto">
				<h1 class="h1">내가 찜한 여행지</h1>
				<p><br>지난 찜기록들을 확인해볼 수 있어요<br><br></p>
			</div>
		</div>
		<div class="row">

			<div class="col-md-6 col-lg-3 pb-5">
				<div class="h-100 py-5 services-icon-wap shadow">
					<img src="/assets/img/mypageChoice/mypageChoiceSeoul.jpg" style = "width: 100%;">
					<h2 class="h5 mt-4 text-center">서울</h2>
					<!--해당 지역클릭했을 때 drop으로  픽한 지역 관광지이름들 나오도록  -->
					<!--그리고 상세지역 눌렀을 때 그 지역관광지 상세여행정보페이지로 이동 -->
					<ul>
						<li>남산</li>
						<li>N서울타워</li>
					</ul>
					
				</div>
			</div>

			<div class="col-md-6 col-lg-3 pb-5">
				<div class="h-100 py-5 services-icon-wap shadow">
					<img
						src="/assets/img/mypageChoice/mypageChoiceGangwonDo.jpg" style = "width: 100%;">
					<h2 class="h5 mt-4 text-center">강원도</h2>
					<ul>
						<li>춘천시</li>
						<li>남이섬</li>
					</ul>
				</div>
			</div>

			<div class="col-md-6 col-lg-3 pb-5">
				<div class="h-100 py-5 services-icon-wap shadow">
					<img
						src="/assets/img/mypageChoice/mypageChoiceZeju.jpg" style = "width: 100%;">
					<h2 class="h5 mt-4 text-center">제주도</h2>
					<ul>
						<li>서귀포시</li>
						<li>한라산</li>
					</ul>
				</div>
			</div>

			<div class="col-md-6 col-lg-3 pb-5">
				<div class="h-100 py-5 services-icon-wap shadow">
					<img src="/assets/img/mypageChoice/mypageChoiceJunla.jpg" style = "width: 100%;">
						<h2 class="h5 mt-4 text-center">전라도</h2>
						<ul>
							<li>순천시</li>
							<li>순천만습지</li>
						</ul>
				</div>
			</div>

			<div class="col-md-6 col-lg-3 pb-5">
				<div class="h-100 py-5 services-icon-wap shadow">
					<img src="/assets/img/mypageChoice/mypageChoiceChungcheongdo.jpg" style = "width: 100%;">
						<h2 class="h5 mt-4 text-center">충청도</h2>
						<ul>
							<li>단양</li>
							<li>단양 패러글라이딩</li>
						</ul>
				</div>
			</div>
			
			<div class="col-md-6 col-lg-3 pb-5">
				<div class="h-100 py-5 services-icon-wap shadow">
					<img src="/assets/img/mypageChoice/mypageChoiceGyeonggiDo.jpg" style = "width: 100%;">
						<h2 class="h5 mt-4 text-center">경기도</h2>
						<ul>
							<li>용인</li>
							<li>에버랜드</li>
						</ul>
				</div>
			</div>
		</div>
	</section>
	<!-- End Section -->

	<!-- Start Brands -->
	<section class="bg-light py-5">
		<div class="container my-4">
			<div class="row text-center py-3">
				<div class="col-lg-6 m-auto">
					<h3>오늘은 무엇을 타고 여행을 갈까?</h3>
				</div>
				<div class="col-lg-9 m-auto tempaltemo-carousel">
					<div class="row d-flex flex-row">
						<!--Controls-->
						<div class="col-1 align-self-center">
							<a class="h1" href="#templatemo-slide-brand" role="button"
								data-bs-slide="prev"> <i
								class="text-light fas fa-chevron-left"></i>
							</a>
						</div>
						<!--End Controls-->

						<!--Carousel Wrapper-->
						<div class="col">
							<div class="carousel slide carousel-multi-item pt-2 pt-md-0"
								id="templatemo-slide-brand" data-bs-ride="carousel">
								<!--Slides-->
								<div class="carousel-inner product-links-wap" role="listbox">

									<!--First slide-->
									<div class="carousel-item active">
										<div class="row">
											<div class="col-3 p-md-5">
												<a href="#">🚗</a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#">🚌</a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#">🚝</a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#">🚲</a>
											</div>
										</div>
									</div>
									<!--End First slide-->

									<!--Second slide-->
									<div class="carousel-item">
										<div class="row">
											<div class="col-3 p-md-5">
												<a href="#">🚗</a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#">🚌</a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#">🚝</a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#">🚲</a>
											</div>
										</div>
									</div>
									<!--End Second slide-->

									<!--Third slide-->
									<div class="carousel-item">
										<div class="row">
											<div class="col-3 p-md-5">
												<a href="#">🚗</a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#">🚌</a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#">🚝</a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#">🚲</a>
											</div>
										</div>
									</div>
									<!--End Third slide-->

								</div>
								<!--End Slides-->
							</div>
						</div>
						<!--End Carousel Wrapper-->

						<!--Controls-->
						<div class="col-1 align-self-center">
							<a class="h1" href="#templatemo-slide-brand" role="button"
								data-bs-slide="next"> <i
								class="text-light fas fa-chevron-right"></i>
							</a>
						</div>
						<!--End Controls-->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--End Brands-->

<jsp:include page="/footer.jsp"/>

	<!-- Start Script -->
	<script src="/assets/js/jquery-1.11.0.min.js"></script>
	<script src="/assets/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="/assets/js/bootstrap.bundle.min.js"></script>
	<script src="/assets/js/templatemo.js"></script>
	<script src="/assets/js/custom.js"></script>
	<!-- End Script -->
</body>

</html>