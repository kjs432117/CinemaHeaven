<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
		<div>
			<h3>회원목록</h3>
		</div>
		<div>
			<form id="frm" action="" method="post">
				<select id="search" name="search">
					<option value="all" selected="selected">전 체</option>
					<option value="name">이 름</option>
					<option value="tell">전화번호</option>
				</select> <input type="text" id="data" name="data" size="20"
					onkeypress="eventKey(this)">&nbsp;
				<button type="button" onclick="searchData()">검 색</button>
			</form>
		</div>
		<br>
		<div>
			<table border="1">
				<thead>
					<tr align="center" style="background color: yellow">
						<th width="150">아 이 디</th>
						<th width="150">이 름</th>
						<th width="150">전화번호</th>
						<th width="150">권 한</th>
						<th width="150">선호장르</th>
						<th width="150">가입날짜</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${clients }" var="client">
						<tr>
							<td align="center">${client.id }</td>
							<td align="center">${client.name }</td>
							<td align="center">${client.tell }</td>
							<td align="center">${client.author }</td>
							<td align="center">${client.genre }</td>
							<td align="center">${client.clientDate }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<script type="text/javascript">
		function eventKey(enterKey) {
			if (event.keyCode == 13) {
				searchData();
			} else {
				return false;
			}
		}

		function searchData() {
			$.ajax({
				url : "ajaxSearchClient.do",
				type : "post",
				data : {
					"key" : $("#search option:selected").val(),
					"data" : $("#data").val()
				},
				dataType : "json",
				success : function(result) {
					if (result.length > 0) {
						htmlView(result);
					} else {
						alert("조건에 맞는 결과 없음")
					}
				}
			});
		}

		function htmlView(data) {
			$('tbody').remove();
			var tb = $("<tbody />");
			$.each(data, function(index, item) {
				var row = $("<tr />").append(
						$("<td align='center' />").text(item.id),
						$("<td align='center' />").text(item.name),
						$("<td align='center' />").text(item.tell),
						$("<td align='center' />").text(item.author),
						$("<td align='center' />").text(item.clientDate));
				tb.append(row);
			});
			$('table').append(tb);
		}
	</script>
</body>
</html>