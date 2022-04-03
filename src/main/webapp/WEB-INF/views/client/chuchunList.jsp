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
				<h6 class="m-0 font-weight-bold text-primary">추천영화목록</h6>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="60%"
						cellspacing="0">
						
						<thead>
							<tr style="border-bottom: 1px; solid; color:white;">
								<th style="color:white;">포스터</th>
								<th style="color:white;">제목</th>
								<th style="color:white;">감독</th>
								<th style="color:white;">배우</th>
								<th style="color:white;">장르</th>
								<th style="color:white;">설명</th>
							</tr>
						</thead>

						<tbody>
							<c:forEach items="${chuchunMovie}" var="movies">
								<tr>
									<td style="color:white;"><img style="width:150px;" alt="" src="resources/img/movies/${movies.movie_poster }"></td>
									<td style="color:white;">${movies.movie_title }</td>
									<td style="color:white;">${movies.movie_director }</td>
									<td style="color:white;">${movies.movie_actor }</td>
									<td style="color:white;">${movies.movie_genre }</td>
									<td style="color:white; width:300px">${movies.movie_description }</td>
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