<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>

<body class="body">
	<!-- page title -->
	<section class="section section--first section--bg"
		data-bg="resources/img/section/section.jpg">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section__wrap">
						<!-- section title -->
						<h2 class="section__title">마이페이지</h2>
						<!-- end section title -->

						<!-- breadcrumb -->
						<ul class="breadcrumb">
							<li class="breadcrumb__item"><a href="home.do">Home</a></li>
							<li class="breadcrumb__item breadcrumb__item--active">Mypage</li>
						</ul>
						<!-- end breadcrumb -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end page title -->

	<!-- pricing -->
	<div class="section">
		<div class="container">
			<div class="row">
				<!-- plan features -->
				<div class="col-12">
					<ul class="row plan-features">
						<li class="col-12 col-md-6 col-lg-4">반갑습니다 ${client.name }!!
							님</li>
					</ul>
				</div>
				<!-- end plan features -->

				<!-- 회원정보 -->
				<div class="col-12 col-md-2 col-lg-4">
					<div class="price">
						<div class="price__item price__item--first">
							<span>회원정보</span>
						</div>
						<div class="price__item">
							<span>아이디 : ${client.id }</span>
						</div>
						<div class="price__item">
							<span>선호장르 : ${client.genre }</span>
						</div>
						<a href="clientUpdateForm.do" class="price__btn">상세보기/수정</a>
					</div>
				</div>
				<!-- 회원정보 price -->

				<!-- 예매정보 -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="price price--premium">
						<div class="price__item price__item--first">
							<span>예매정보</span>
						</div>
						<a href="yeaMeList.do" class="price__btn">예매정보조회</a>
					</div>
				</div>
				<!-- 예매정보 price -->

				<!-- 추천리스트 -->
				<!-- <div class="col-12 col-md-6 col-lg-4">
					<div class="price">
						<div class="price__item price__item--first"><span>영화추천리스트</span></div>
						<a href="chuchunList.do" class="price__btn">가즈아!!</a>
					</div>
				</div> -->

				<div class="col-12 col-md-6 col-lg-4">
					<div class="price price--premium">
						<div class="price__item price__item--first">
							<span>추천영화</span>
						</div>

						<div class="filter__item" id="filter__genre">
							<span class="filter__item-label">선호장르:</span>

							<div class="filter__item-btn dropdown-toggle" role="navigation"
								id="filter-genre" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								<input type="button" onclick="chuchunAjax1()"
									value="${client.genre}"> <span></span>
							</div>

							<ul class="filter__item-menu dropdown-menu scrollbar-dropdown"
								aria-labelledby="filter-genre">
								<%-- <c:forEach items="${chuchunMovie } " var="movie">
									<li>${movie.movie_title}</li>
								 </c:forEach> --%>

							</ul>
						</div>

						<div class="filter__item" id="filter__genre">
							<span class="filter__item-label">많이 본 장르:</span>

							<div class="filter__item-btn dropdown-toggle" role="navigation"
								id="filter-genre" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								<input type="button" value="${client.genre} "> <span></span>
							</div>

							<ul class="filter__item-menu dropdown-menu scrollbar-dropdown"
								aria-labelledby="filter-genre">
								<li>Action/Adventure</li>
								<li>Animals</li>
								<li>Animation</li>
								<li>Biography</li>
								<li>Comedy</li>
								<li>Cooking</li>
								<li>Dance</li>
								<li>Documentary</li>
								<li>Drama</li>

							</ul>
						</div>



						<a href="chuchunList.do" class="price__btn">추천영화목록 상세보기</a>
					</div>
				</div>
				<!-- 추천리스트 price -->
			</div>
		</div>
	</div>
	<%-- 						<c:forEach items="${chuchunMovie}" var="movies">
						<div class="price__item"><span>영화명 : ${movies.movie_title }</span></div>
						</c:forEach> --%>






</body>

</html>