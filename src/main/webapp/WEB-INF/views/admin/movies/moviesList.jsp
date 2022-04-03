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
				<h6 class="m-0 font-weight-bold text-primary">영화목록</h6>
				<a href="moviesInsertForm.do">영화등록</a>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>번호</th>
								<th>포스터파일명</th>
								<th>제목</th>
								<th>감독</th>
								<th>배우</th>
								<th>장르</th>
								<th>상영시간</th>
								<th>개봉일</th>
								<th>설명</th>
								<th>상영시작일</th>
								<th>상영종료일</th>
								<th>트레일러링크</th>
								<th>예매수</th>
							</tr>
						</thead>

						<tbody>
							<c:forEach items="${moviess}" var="movies">
								<tr>
									<td>${movies.movie_id }</td>
									<td>${movies.movie_poster }</td>
									<td>${movies.movie_title }</td>
									<td>${movies.movie_director }</td>
									<td>${movies.movie_actor }</td>
									<td>${movies.movie_genre }</td>
									<td>${movies.movie_runningtime }</td>
									<td>${movies.movie_releasedate }</td>
									<td>${movies.movie_description }</td>
									<td>${movies.movie_startdate }</td>
									<td>${movies.movie_enddate }</td>
									<td>${movies.movie_trailer }</td>
									<td>${movies.movie_count }</td>
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