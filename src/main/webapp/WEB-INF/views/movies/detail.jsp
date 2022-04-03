<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<body>

	<!-- details -->
	<section class="section details">
		<!-- details background -->
		<div class="details__bg" data-bg="resources/img/home/home__bg.jpg"></div>
		<!-- end details background -->

		<!-- details content -->
		<div class="container">
			<div class="row">
				<!-- title -->
				<div class="col-12">
					<h1 class="details__title">${detail.movie_title }</h1>
				</div>
				<!-- end title -->

				<!-- content -->
				<div class="col-12 col-xl-6">
					<div class="card card--details">
						<div class="row">
							<!-- card cover -->
							<div class="col-12 col-sm-4 col-md-4 col-lg-3 col-xl-5">
								<div class="card__cover">
									<img src="resources/img/movies/${detail.movie_poster }" alt="">
								</div>
							</div>
							<!-- end card cover -->

							<!-- card content -->
							<div class="col-12 col-sm-8 col-md-8 col-lg-9 col-xl-7">
								<div class="card__content">
									<div class="card__wrap">
										<span class="card__rate"><i class="icon ion-ios-star"></i>${detail.movie_rate }%</span>

									</div>

									<ul class="card__meta">
										<li><span>장르:</span> <a href="#">${detail.movie_genre }</a>
										<li><span>감독:</span> <a href="#">${detail.movie_director }</a>
										<li><span>배우:</span> <a href="#">${detail.movie_actor }</a>
										<li><span>개봉일:</span>${detail.movie_releasedate }</li>
										<li><span>상영시간:</span>${detail.movie_runningtime }분</li>
										<li><span>관람수:</span>${detail.movie_count }</li>
									</ul>

									<div class="card__description card__description--details">
										${detail.movie_description }</div>
								</div>
							</div>
							<!-- end card content -->
						</div>
					</div>
				</div>
				<!-- end content -->

				<!-- player -->

				<div id="youtubevideo" class="col-12 col-xl-6">
				</div>
				<div id="youtubelink" style="display:none">
					'${detail.movie_trailer }'
				</div>
			</div>
		</div>
		<!-- end details content -->
	</section>
	<!-- end details -->

	<script>
		var link = document.getElementById("youtubelink").innerHTML;
		document.getElementById("youtubevideo").innerHTML = "<iframe width='480' height='270' src=" + link.replace('youtu.be', 'youtube.com/embed') + "title='YouTube video player' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen></iframe>"		
	</script>

</body>

</html>