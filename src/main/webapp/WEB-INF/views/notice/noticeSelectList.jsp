<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice main</title>

</head>

<style>
th, td {
	text-align: center;
}

th {
	background-color: #f5f5f5;
}

td {
	background-color: #fffafa;
}
</style>
<body>
	<div style="margin-top: 100px">


		<div align="center">
<style>
h1 {
	text-align: left;
}
.title{
position: relative;
left: 560px;
top: 40px;
}
.btn{
position: relative;
top: 80px;
left : 350px; 

}
</style>
			<div style="color: white;" class="title">
				<h1>공지사항</h1>
			</div>
			<a href="noticeInsertForm.do" style="color:white;" ><role="button" class="btn btn-outline-info"><h2>글쓰기</h2></a>
			<div style="margin-top: 100px;">
				<table>
					<thead>
						<tr>
							<th width="100">번호</th>
							<th width="100">작성자</th>
							<th width="150">제목</th>
							<th width="200">작성</th>
							<th width="100">작성날짜</th>
							<th width="100">조회수</th>
					</thead>
					<tbody>
						<c:if test="${notices[0].notice_id eq null }">
							<tr>
								<td colspan="6" align="center">데이터가 존재하지 않습니다.</td>
							</tr>
						</c:if>
						<c:if test="${notices ne null }">
							<c:forEach items="${notices }" var="notice">
								<tr>
									<td align="center">${notice.notice_id }</td>
									<td align="center">${notice.notice_writername }</td>
									<td align="center"><a href="noticeSelect.do?notice_id=${notice.notice_id }">${notice.notice_title }</a></td>
									<td align="center">${notice.notice_subject }</td>
									<td align="center">${notice.notice_writerdate}</td>
									<td align="center">${notice.notice_hit}</td>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>
			</div>
			<br>
			<div></div>
		</div>
</body>
</html>