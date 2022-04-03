<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
              th, td{
                 text-align:center;
              }
              th {
                background-color: #f5f5f5;
              }
              td {
                background-color: #fffafa;
              }
.click{
position: relative;
left:1240px;
top: 40px;
}
.btn{
position: relative;
left:1250px;
top: 40px;
}	
.btn1{
position: relative;
left:1400px;
top: 40px;
}		
</style>
<body> 
   <title>수정하기</title>

</head>
<body>
    <form id="frm" action="noticeUpdate.do">
    <div style="margin-top:130px">
        <table width=53% height=500px align=center class="noticeUpdate.do">
            <%-- <caption>글 수정하기</caption> --%>
            <colgroup>
                <col width="15%">
                <col width="*">
            </colgroup>
            <tbody>
                <tr>
                    <th scope="row">글 번호</th>
                    <td> <input type="HIDDEN" id="notice_id" name="notice_id" class="notices.notice_title" value="${notices.notice_id}"></td>
                </tr>
                <tr>
                    <th scope="row">작성자</th>
                    <td>${notices.notice_writername }</td>
                </tr>
                <tr>
                    <th scope="row">제목</th>
                    <td colspan="3">
                        <input type="text" id="notice_title" name="notice_title" class="notices.notice_title" value="${notices.notice_title }"/>
                    </td>
                </tr>
                <tr>
                    <th scope="row">내용</th>
                    <td colspan="3" class="view_text">
                        <textarea rows="20" cols="100" title="내용" id="notice_subject" name="notice_subject">${notices.notice_subject 	}</textarea>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
    <a href="noticeSelectList.do" id="notice_SelectList"style="color:white;" class="btn1">목록으로</a>
 	<button style="color:white;"onclick="subfnc()" class="click">수정</button>
    <a href="noticeDelete.do?notice_id=${notices.notice_id}"><role="button" style="color:white;"class="btn btn-outline-info">삭제</a>
    <script type="text/javacript">
	function subFnc(){
	document.getElementById('#frm').submit();
	}
	
	</script>
</body>
</html>