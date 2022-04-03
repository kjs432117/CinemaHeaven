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
	<div><h1>상영영화등록</h1></div>
	<div>
		<form id="frm" action="moviesReserveInsert.do" onsubmit="return check()" method="post" enctype="multipart/form-data">
			<div>
				<table border="1">
					<tr>
						<th width="150">제목</th>
						<td width="300">
							<input type="text" id="movie_reserve_title" name="movie_reserve_title">
						</td>
					</tr>
					<tr>
						<th width="150">재생시간</th>
						<td width="300">
							<input type="text" id="movie_reserve_runningtime" name="movie_reserve_runningtime">
						</td>
					</tr>
					<tr>
						<th width="150">상영일</th>
						<td width="300">
							<input type="date" id="movie_reserve_date" name="movie_reserve_date">
							</td>
					</tr>
					<tr>
						<th width="150">상영관</th>
						<td width="300">
							<input type="text" id="movie_reserve_theater" name="movie_reserve_theater">
							</td>
					</tr>
					<tr>
						<th width="150">시작시간</th>
						<td width="300">
							<input type="time" id="movie_reserve_starttime" name="movie_reserve_starttime">
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
		location.href="moviesReserveList.do";
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