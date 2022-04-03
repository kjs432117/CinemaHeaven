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

	<div class="sign section--bg" data-bg="resources/img/section/section.jpg">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="sign__content">
						<!-- 로그인 화면 -->
						<form action="login.do" class="sign__form" method="post">
							
							
							<!-- 로고 부분 클릭시 메인 페이지로 -->
							<a href="home.do" class="sign__logo">
								<img src="resources/img/logo.svg" alt="">
							</a>

							<div class="sign__group">
								<input type="email" class="sign__input" placeholder="아이디"
								id="id" name="id">
							</div>

							<div class="sign__group">
								<input type="password" class="sign__input" placeholder="비밀번호"
								id="pw" name="pw">
							</div>

							<!-- 회원가입 22-01-18 안해봤음..-->
							<!-- <div class="sign__group sign__group--checkbox">
								<input id="remember" name="remember" type="checkbox" checked="checked">
								<label for="remember">Remember Me</label>
							</div> -->
							
							<!-- 로그인 버튼 -->
							<button type="submit" class="sign__btn">로그인</button>

							<span class="sign__text">계정이 없으신가요? <a href="registerForm.do">회원가입으로..</a></span>
							<!-- 회원가입 22-01-18 안해봤음..-->
							<!-- <span class="sign__text"><a href="#">비밀번호를 잊으셨나요?</a></span> -->
						</form>
						<!-- end authorization form -->
					</div>
				</div>
			</div>
		</div>
	</div>

</body>

</html>