<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/js/jquery-3.3.1.min.js"></script>
</head>
<body>
<div align="center">
	<div><h1>영화등록</h1></div>
	<div>
		<form id="frm" action="moviesInsert.do" onsubmit="return check()" method="post" enctype="multipart/form-data">
			<div>
				<table border="1">
					<tr>
						<th width="150">제목</th>
						<td width="300">
							<input type="text" id="movie_title" name="movie_title">
						</td>
					</tr>
					<tr>
						<th width="150">감독</th>
						<td width="300">
							<input type="text" id="movie_director" name="movie_director">
						</td>
					</tr>
					<tr>
						<th width="150">배우</th>
						<td width="300">
							<input type="text" id="movie_actor" name="movie_actor">
							</td>
					</tr>
					<tr>
						<th width="150">장르</th>
						<td width="300">
							<input type="text" id="movie_genre" name="movie_genre">
							</td>
					</tr>
					<tr>
						<th width="150">상영시간</th>
						<td width="300">
							<input type="number" id="movie_runningtime" name="movie_runningtime">
							</td>
					</tr>
					<tr>
						<th width="150">개봉일</th>
						<td width="300">
							<input type="date" id="movie_releasedate" name="movie_releasedate">
							</td>
					</tr>
					<tr>
						<th width="150" height="150">영화설명</th>
						<td width="300" height="150">
							<input type="text" id="movie_description" name="movie_description">
							</td>
					</tr>
					<tr>
						<th width="150">상영시작일</th>
						<td width="300">
							<input type="date" id="movie_startdate" name="movie_startdate">
						</td>
					</tr>
					<tr>
						<th width="150">상영종료일</th>
						<td width="300">
							<input type="date" id="movie_enddate" name="movie_enddate">
						</td>
					</tr>
					<tr>
						<th width="150">트레일러링크</th>
						<td width="300">
							<input type="text" id="movie_trailer" name="movie_trailer">
						</td>
					</tr>
					<tr>
						<th width="150">포스터사진</th>
						<td width="300">
							<input type="file" id="file" name="file">
						</td>
					</tr>
				</table>
			</div><br>
			<div>
				<input type="submit" value="등록">&nbsp;&nbsp;
				<input type="reset" value="취 소" onclick="cancel()">
			</div>
		</form>
	</div>
</div>


<script type="text/javascript">

	function cancel() {
		location.href="moviesList.do";
	}

	function check() {
		var confirmation = confirm("등록하시겠습니까?")
		if (confirmation == true) {
			return true;
		} else {
			return false;
		}
		
	}

</script>
</body>
</html>