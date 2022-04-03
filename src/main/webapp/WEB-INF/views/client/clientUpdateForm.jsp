<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="Dmitry Volkov">
<title>FlixGo – Online Movies, TV Shows & Cinema HTML Template</title>

</head>
<body class="body">

	<div class="sign section--bg"
		data-bg="resources/img/section/section.jpg">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="sign__content">

						<!-- 회원정보 수정 -->
						<form action="clientUpdate.do" method="post" class="sign__form">
							<a href="clientUpdateForm.do" class="sign__logo"> <img
								src="resources/img/logo.svg" alt="">
							</a>

							<div class="sign__group">
							<label class="" for="id" style="color:white; text-align:center;">아이디</label><br>
								<input type="email" id="id" name="id" required="required"
									class="sign__input" value="${id }">
							</div>

							<div class="sign__group">
								<label class="" for="name" style="color:white; text-align:center;">비밀번호</label><br>
								<input type="text" class="sign__input" id="pw" name="pw" placeholder="새로운 비밀번호...."
									value="${client.pw }">

							</div>

							<div class="sign__group">
								<label class="" for="name" style="color:white; text-align:center;">이름</label><br>
								<input type="text" class="sign__input" id="name" name="name" 
									placeholder="새로운 이름...." value="${client.name }" >
							</div>

							<div class="sign__group">
								<label class="" for="tell" style="color:white; text-align:center;">전화번호</label><br>
								 <input type="text"
									class="sign__input" id="tell" name="tell" 
									placeholder="새로운 전화번호...." value="${client.tell }">
							</div>
							
							<div class="sign__group">
								<label for="cars" style="color:white;" >선호하는 장르 선택 : </label> 
								<select  id="genre" name="genre">
									<c:choose>
										<c:when test="${client.genre eq '호러' }">
											<option value="호러" id="호러">${client.genre }</option>
											<option value="공포" id="공포">공포</option>
											<option value="액션" id="액션">액션</option>
											<option value="드라마" id="드라마">드라마</option>
											<option value="판타지" id="판타지">판타지</option>
											<option value="스릴러" id="스릴러">스릴러</option>
							
										</c:when>
										<c:when test="${client.genre eq '스릴러' }">
											<option value="스릴러" id="스릴러">${client.genre }</option>
											<option value="호러" id="호러">호러</option>
											<option value="액션" id="액션">액션</option>
											<option value="드라마" id="드라마">드라마</option>
											<option value="판타지" id="판타지">판타지</option>
											<option value="공포" id="공포">공포</option>
										</c:when>
										<c:when test="${client.genre eq '드라마' }">
											<option value="드라마" id="드라마">${client.genre }</option>
											<option value="호러" id="호러">호러</option>
											<option value="액션" id="액션">액션</option>
											<option value="공포" id="공포">공포</option>
											<option value="판타지" id="판타지">판타지</option>
											<option value="스릴러" id="스릴러">스릴러</option>
										</c:when>
										<c:when test="${client.genre eq '액션' }">
											<option value="액션" id="액션">${client.genre }</option>
											<option value="호러" id="호러">호러</option>
											<option value="드라마" id="드라마">드라마</option>
											<option value="공포" id="공포">공포</option>
											<option value="판타지" id="판타지">판타지</option>
											<option value="스릴러" id="스릴러">스릴러</option>
										</c:when>
										
										<c:when test="${client.genre eq '판타지'}">
											<option value="판타지" id="판타지">${client.genre }</option>
											<option value="액션" id="액션">액션</option>
											<option value="호러" id="호러">호러</option>
											<option value="드라마" id="드라마">드라마</option>
											<option value="공포" id="공포">공포</option>
											<option value="스릴러" id="스릴러">스릴러</option>
										
										</c:when>
										<c:when test="${client.genre eq '공포'}">
											<option value="공포" id="공포">${client.genre }</option>
											<option value="호러" id="호러">호러</option>
											<option value="액션" id="액션">액션</option>
											<option value="드라마" id="드라마">드라마</option>
											<option value="판타지" id="판타지">판타지</option>
											<option value="스릴러" id="스릴러">스릴러</option>
										</c:when>


									</c:choose>
								</select>
							</div>

							<!--  <div class="sign__group sign__group--checkbox">
								<input id="remember" name="remember" type="reset"
									checked="checked"> <label for="remember">I
									agree to the <a href="clientUpdateForm.do">Reset</a>
								</label>
							</div>  -->
							
							 <div class="sign__group sign__group--checkbox">
								<input id="remember" name="remember" type="reset"
									> <label for="remember">Reset
								</label>
							</div> 
							
							<input class="sign__btn" type="submit" value="회원수정"> 
							<span class="sign__text"><a href="myPage.do">취소</a></span>
						</form>
						<!-- registration form -->
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>