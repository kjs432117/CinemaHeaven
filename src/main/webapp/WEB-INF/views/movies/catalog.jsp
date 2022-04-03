<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<body>
	<style>
.wrap input[type="checkbox"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

.wrap input[type="checkbox"]+label {
	display: inline-block;
	position: relative;
	padding-left: 26px;
	cursor: pointer;
}

.wrap input[type="checkbox"]+label:before {
	content: '';
	position: absolute;
	left: 0;
	top: 3px;
	width: 18px;
	height: 18px;
	text-align: center;
	background: #fff;
	border: 1px solid #ccc;
	box-sizing: border-box;
} /* 보여질 부분의 스타일을 추가하면 된다. */
.wrap input[type="checkbox"]:checked+label:after {
	content: '';
	position: absolute;
	top: 3px;
	left: 0;
	width: 18px;
	height: 18px;
	background-color: #ff5860;
}
span {
	color: white;
}
</style>

	<!-- page title -->
	<section class="section section--first section--bg"
		data-bg="resources/img/section/section.jpg">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section__wrap">
						<!-- section title -->
						<h2 class="section__title">영화</h2>
						<!-- end section title -->

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end page title -->

	<!-- filter -->
	<div class="filter">
		<div class="container">
			<div class="row">
				<div class="col-12">

					<div>
						<div class="wrap">
							<input id="agree" type="checkbox" onclick="listing(event)"> <label for="agree">
								<span>현재 상영작만 보기</span>
							</label>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- end filter -->

	<!-- catalog -->
	<div class="catalog" id="listAll" style="display:block">
		<div class="container">
			<div class="row">
			
				<!-- card -->
				<c:forEach items="${all}" var="all">
				<div class="col-6 col-sm-12 col-lg-6">
					<div class="card card--list">
						<div class="row">
							<div class="col-12 col-sm-4">
								<div class="card__cover">
									<img src="resources/img/movies/${all.movie_poster }" alt=""> <a href="detail.do?id=${all.movie_id}"
										class="card__play"> <i class="icon ion-ios-play"></i>
									</a>
								</div>
							</div>

							<div class="col-12 col-sm-8">
								<div class="card__content">
									<h3 class="card__title" style="line-height:30px">
										<a href="detail.do?id=${all.movie_id}">${all.movie_title }</a>
									</h3>
									<span class="card__category"> <a href="#">${all.movie_genre }</a>
									</span>

									<div class="card__wrap">
										<span class="card__rate"><i class="icon ion-ios-star"></i>예매율: ${all.movie_rate } %</span>

									</div>

									<div class="card__description">
										<p>${all.movie_description }</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>
				<!-- end card -->

<!-- 
				paginator
				<div class="col-12">
					<ul class="paginator paginator--list">
						<li class="paginator__item paginator__item--prev"><a href="#"><i
								class="icon ion-ios-arrow-back"></i></a></li>
						<li class="paginator__item"><a href="#">1</a></li>
						<li class="paginator__item paginator__item--active"><a
							href="#">2</a></li>
						<li class="paginator__item"><a href="#">3</a></li>
						<li class="paginator__item"><a href="#">4</a></li>
						<li class="paginator__item paginator__item--next"><a href="#"><i
								class="icon ion-ios-arrow-forward"></i></a></li>
					</ul>
				</div>
				end paginator
				 -->
				
			</div>
		</div>
	</div>
	<!-- end catalog -->
	
		<!-- catalog -->
	<div class="catalog" id="listShowing" style="display:none">
		<div class="container">
			<div class="row">
			
				<!-- card -->
				<c:forEach items="${showing}" var="showing">
				<div class="col-6 col-sm-12 col-lg-6">
					<div class="card card--list">
						<div class="row">
							<div class="col-12 col-sm-4">
								<div class="card__cover">
									<img src="resources/img/movies/${showing.movie_poster }" alt=""> <a href="detail.do?id=${showing.movie_id}"
										class="card__play"> <i class="icon ion-ios-play"></i>
									</a>
								</div>
							</div>

							<div class="col-12 col-sm-8">
								<div class="card__content">
									<h3 class="card__title" style="line-height:30px">
										<a href="detail.do?id=${showing.movie_id}">${showing.movie_title }</a>
									</h3>
									<span class="card__category"> <a href="#">${showing.movie_genre }</a>
									</span>

									<div class="card__wrap">
										<span class="card__rate"><i class="icon ion-ios-star"></i>예매율: ${showing.movie_rate } %</span>

									</div>

									<div class="card__description">
										<p>${showing.movie_description }</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>
				<!-- end card -->

<!-- 
				paginator
				<div class="col-12">
					<ul class="paginator paginator--list">
						<li class="paginator__item paginator__item--prev"><a href="#"><i
								class="icon ion-ios-arrow-back"></i></a></li>
						<li class="paginator__item"><a href="#">1</a></li>
						<li class="paginator__item paginator__item--active"><a
							href="#">2</a></li>
						<li class="paginator__item"><a href="#">3</a></li>
						<li class="paginator__item"><a href="#">4</a></li>
						<li class="paginator__item paginator__item--next"><a href="#"><i
								class="icon ion-ios-arrow-forward"></i></a></li>
					</ul>
				</div>
				end paginator
				 -->
				
			</div>
		</div>
	</div>
	<!-- end catalog -->

<script type="text/javascript">

	function listing(event)  {
		  if(event.target.checked)  {
			document.getElementById("listAll").style.display = "none";
			document.getElementById("listShowing").style.display = "block";
        } else {
        	document.getElementById("listAll").style.display = "block";
        	document.getElementById("listShowing").style.display = "none";
        }
    }

</script>
</body>

</html>