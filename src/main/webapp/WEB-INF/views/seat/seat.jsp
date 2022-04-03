<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet"
	href="resources/css/reset.css?t=<%=System.currentTimeMillis()%>">
<link rel="stylesheet"
	href="resources/css/seat.css?t=<%=System.currentTimeMillis()%>">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel='stylesheet'
	href='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css' />
<script
	src='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js'></script>
<link rel="stylesheet"
	href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

<style>
.reserved {
    background-color: red;
    color: white;
}
</style>
<body>

<script type="text/javascript">
<c:if test="${id eq null}">

	alert("로그인이 필요한 작업입니다 로그인을 진행해 주세요!")
	location.href="home.do"
	
</c:if>
</script>

	<!-- page title -->
	<section class="section section--first section--bg"
		data-bg="resources/img/section/section.jpg">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section__wrap">
						<!-- section title -->
						<h2 class="section__title">예매</h2>
						<!-- end section title -->

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end page title -->


	<%-- <%
		if (login == null) {
	%>
	<script>
		alert("로그인이 필요한 작업입니다 로그인을 진행해 주세요!")
		location.href = "moveMain.do"
	</script>
	<%
		}
	%> --%>


	<div class="select-container"
		style="display: flex; justify-content: center;">
		<div class="poster-part" style="width: 150px;">
			<div class="reserve-title">광고</div>
			<img style="width: 150px;"
				src="resources/img/movies/82479_320.jpg765b0ec3-bcd1-4ce7-892b-fe547ac203b2.jpg"
				alt=""> <br> <img style="width: 150px;"
				src="resources/img/movies/84632_320.jpg062eb429-225f-4d75-a383-e890a25b0ae2.jpg"
				alt=""> <br> <img style="width: 150px;"
				src="resources/img/movies/84780_320.jpgbb2dfe43-3101-4c82-894d-53a85b6b9d9e.jpg"
				alt="">
		</div>
		<div class="select-wrapper" style="margin: 30px; height: 900px;">
			<div class="select-title">인원/좌석</div>
			<div class="select-seat-container">
				<div class="select-seat-number-container">
					<div class="select-seat-number-wrapper">
						<div class="select-seat">
							<div class="select-seat-age">일반</div>
							<div class="select-seat-number">
								<ul class="select-seat-ul select-seat-ul-normal">
									<li class="select-number-normal ">0</li>
									<li class="select-number-normal">1</li>

								</ul>
							</div>
						</div>

					</div>
					<div class="reserve-number-wrapper">
						<div class="reserve-number-title">선택된 좌석 수</div>
						<div class="reserve-number">0</div>
					</div>
				</div>
				<div class="select-seat-information">
					<div class="selected-movie">
						<%-- <%=reserve.getTitle()%>  --%>
					</div>
					<div class="select-seat-information-wrapper">
						<div class="select-theater-place selected-theater-place-info">${reserve_movie_title}
							</div>						
						<div class="select-theater-place selected-theater-place-info">(${reserve_movie_theater}관)${reserve_movie_starttime}
							</div>
						<div class="select-theater-place">
							<span>남은좌석</span><span class="remain-seats"></span>/<span
								class="all-seats"></span>
						</div>

					</div>
					<div class="select-theater-date"><<%-- div
						class="theater-date"><%=reserve.getMovieDate()%></div> --%> <div
						class="theater-time"></div></div>
					<div class="selected-seats-wrapper">
						<span class="selected-seats-title">좌석번호</span> <span
							class="selected-seats">선택한 좌석이 없습니다.</span>
					</div>
					<div class="ticket-price-wrapper">
						<div class="ticket-price-title">가격</div>
						<div class="ticket-price">0원</div>
					</div>
					<form id="frm" action="yeyak.do" onsubmit="return formCheck()" class="seatForm" method="post">

						<input id="seat" type="hidden" class="selectedSeat"
							name="reserve_selectedseat"> <input type="submit"
							class="" value="예약">

					</form>
				</div>

			</div>
			<div class="seat-container">

				<div class="seat-wrapper">
					<div class="screen-view-wrapper">
						<div class="screen-view">SCREEN</div>
					</div>
				</div>
			</div>
		</div>
		<div class="poster-part" style="width: 150px;">
			<div class="reserve-title">광고</div>
			<img style="width: 150px;"
				src="resources/img/movies/82479_320.jpg765b0ec3-bcd1-4ce7-892b-fe547ac203b2.jpg"
				alt=""> <br> <img style="width: 150px;"
				src="resources/img/movies/84632_320.jpg062eb429-225f-4d75-a383-e890a25b0ae2.jpg"
				alt=""> <br> <img style="width: 150px;"
				src="resources/img/movies/84780_320.jpgbb2dfe43-3101-4c82-894d-53a85b6b9d9e.jpg"
				alt="">
		</div>
	</div>
</body>

<script src="resources/js/seat.js?t=<%=System.currentTimeMillis()%>"></script>

</html>