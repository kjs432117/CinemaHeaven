<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js'></script>


<link rel="stylesheet" href="resources/css/reset.css?t=<%=System.currentTimeMillis() %>">
<link rel="stylesheet" href="resources/css/reserve.css?t=<%=System.currentTimeMillis() %>">
<link rel='stylesheet'
	href='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css' />
<link rel="stylesheet"
	href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
<!-- MATERIAL DESIGN ICONIC FONT -->
	
<body style="background-color: #212529;">

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



    <div class="reserve-container">
    	<div class="poster-part" style="margin-right: 40px;">
    		<div class="reserve-title">광고</div>
    		
    		<div class="movie-poster-wrapper">
    			<div class="movie-poster">
    			<img style="width: 180px;" src="resources/img/movies/84949_320.jpg64129968-c1d1-4b23-bb9b-0184bd583709.jpg" alt="">
    			</div>
    			<div class="movie-poster">
    			<img style="width: 180px;" src="resources/img/movies/85229_320.jpg6c676549-f0d5-4fdc-8a76-e44781591068.jpg" alt="">
    			</div>
    			<div class="movie-poster">
    			<img style="width: 180px;" src="resources/img/movies/85469_320.jpg1eb48b8d-fe16-4aea-adec-e2aeac0f2485.jpg" alt="">
    			</div>
    		</div>
    	
    	</div>
    
        <div class="movie-part" style="background-color: #FDFCF0;">
            <div class="reserve-title">영화</div>

             <div class="movie-list-wrapper">
                <div class="movie-list">
                    <div class="movie-list-title"></div>
                </div>
            </div>
        </div>
        
        <div class="day-part" style="background-color: #FDFCF0;">
            <div class="reserve-title">날짜</div>
            <div class="reserve-date"></div>
        </div>
        <div class="time-part" style="background-color: #FDFCF0;">
            <div class="reserve-title">시간</div>
            <div class="reserve-time">
            
                <div class="reserve-where">(상영관)상영시간 </div>
                
                <div class="reserve-time-wrapper">


                </div>
            </div>
            <div>
            <form class="moveSeatForm" action="seat.do" method="post" accept-charset="UTF-8">
			<input type="hidden" class="id" name="movie_reserve_id">
            <input type="hidden" class="title" name="movie_reserve_title">
            <input type="hidden" class="roomNumber" name="movie_reserve_theater">
            <input type="hidden" class="reserveDate" name="movie_reserve_date">
            <input type="hidden" class="runningTime" name="movie_reserve_starttime">
            <button class="moveSeatButton" type="submit">예약하기</button>
            </form>
            </div>
        </div>

    	<div class="poster-part" style="margin-left: 40px;">
    		<div class="reserve-title">광고</div>
    		
    		<div class="movie-poster-wrapper">
    			<div class="movie-poster">
    			<img style="width: 180px;" src="resources/img/movies/82479_320.jpg765b0ec3-bcd1-4ce7-892b-fe547ac203b2.jpg" alt="">
    			</div>
    			<div class="movie-poster">
    			<img style="width: 180px;" src="resources/img/movies/84632_320.jpg062eb429-225f-4d75-a383-e890a25b0ae2.jpg" alt="">
    			</div>
    			<div class="movie-poster">
    			<img style="width: 180px;" src="resources/img/movies/84780_320.jpgbb2dfe43-3101-4c82-894d-53a85b6b9d9e.jpg" alt="">
    			</div>
    		</div>
    	
    	</div>
    </div>
    <script src="resources/js/reserve.js?t=<%=System.currentTimeMillis() %>"></script>
</body>
