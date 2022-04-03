<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="author" content="Dmitry Volkov">
	<title>FlixGo – Online Movies, TV Shows & Cinema HTML Template</title>

</head>
<body class="body">

	<div align="center">
		<div>
			<table border="1" style="color:white; margin-top: 150px;">
				<thead>
					<tr align="center" style="background color:yellow">
						<th width="150" onclick="#">영화명</th>
						<th width="150">영화상영일자</th>
						<th width="150">영화예매일자</th>
						<th width="150">예매좌석</th>
						<th width="150">예매극장</th>
						<th width="150">예매상영시작시간</th>
						<th width="150">예매아이디</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${yeaMes }" var="yeaMe">
						<tr>
							<td align="center" ><a href="detail.do?id=${yeaMe.reserve_moviename}">${yeaMe.reserve_moviename }</a></td>
							<td align="center">${yeaMe.reserve_moviedate }</td>
							<td align="center">${yeaMe.reserve_reservedate }</td>
							<td align="center">${yeaMe.reserve_selectedseat }</td>
							<td align="center">${yeaMe.reserve_selectedtheater }</td>
							<td align="center">${yeaMe.reserve_starttime }</td>
							<td align="center">${yeaMe.reserve_userid }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>

</html>