<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<header class="header">
	<div class="header__wrap">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="header__content">
						<!-- header logo -->
						<a href="home.do" class="header__logo"> <img
							src="resources/img/logo.svg" alt="">
						</a>
						<!-- end header logo -->

						<!-- header nav -->
						<ul class="header__nav">

							<li class="header__nav-item"><a href="catalog.do"
								class="header__nav-link">영화</a></li>

							<li class="header__nav-item"><a href="reserve.do"
								class="header__nav-link">예매</a></li>

							<li class="header__nav-item"><a href="pricing.do"
								class="header__nav-link">고객센터</a></li>

						</ul>
						<!-- end header nav -->

						<!-- header auth -->
						<div class="header__auth">
							<c:choose>
								<c:when test="${id eq null }">
									<a href="loginForm.do" class="header__sign-in"> <i
										class="icon ion-ios-log-in"></i> <span>로그인</span>
									</a>
									<a href="registerForm.do" class="header__sign-in"> <i
										class="icon ion-ios-log-in"></i> <span>회원가입</span>
									</a>
								</c:when>

							
								<c:when test="${id ne null && author ne 'admin'  }">
									<a href="logout.do" class="header__sign-in"> <i
										class="icon ion-ios-log	-in"></i> <span>로그아웃</span>
									</a>
									<a href="myPage.do" class="header__sign-in"> <i
										class="icon ion-ios-log-in"></i> <span>마이페이지</span>
									</a>
								</c:when>


									<c:otherwise>
									<a href="logout.do" class="header__sign-in"> <i
										class="icon ion-ios-log	-in"></i> <span>로그아웃</span>
									</a>
									<a href="main.do" class="header__sign-in"> <i
										class="icon ion-ios-log-in"></i> <span>관리자페이지</span>
									</a>
									</c:otherwise>
							</c:choose>




						</div>
						<!-- end header auth -->

						<!-- header menu btn -->
						<button class="header__btn" type="button">
							<span></span> <span></span> <span></span>
						</button>
						<!-- end header menu btn -->
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- header search -->
	<form action="#" class="header__search">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="header__search-content">
						<input type="text"
							placeholder="Search for a movie, TV Series that you are looking for">

						<button type="button">search</button>
					</div>
				</div>
			</div>
		</div>
	</form>
	<!-- end header search -->
</header>