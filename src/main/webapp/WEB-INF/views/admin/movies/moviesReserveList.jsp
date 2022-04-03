<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid">

		<!-- Page Heading -->
		<h1 class="h3 mb-2 text-gray-800">Tables</h1>
		<p class="mb-4"></p>

		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">상영영화목록</h6>
				<a href="moviesReserveInsertForm.do">상영영화등록</a>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>재생시간</th>
								<th>상영일</th>
								<th>상영관</th>
								<th>시작시간</th>
								<th>예매수</th>
							</tr>
						</thead>

						<tbody>
							<c:forEach items="${moviesReserves}" var="moviesReserve">
								<tr>
									<td>${moviesReserve.movie_reserve_id }</td>
									<td>${moviesReserve.movie_reserve_title}</td>
									<td>${moviesReserve.movie_reserve_runningtime}</td>
									<td>${moviesReserve.movie_reserve_date }</td>
									<td>${moviesReserve.movie_reserve_theater }</td>
									<td>${moviesReserve.movie_reserve_starttime }</td>
									<td>${moviesReserve.movie_reserve_count }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>

	</div>
</body>
</html>