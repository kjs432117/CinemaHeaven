<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<script src="resources/js/jquery-3.3.1.min.js"></script>
<head>

<title>FlixGo – Online Movies, TV Shows & Cinema HTML Template</title>
</head>
<body class="body">

	<div class="sign section--bg"
		data-bg="resources/img/section/section.jpg">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="sign__content">
						<!-- registration form -->
						<form id="frm" action="register.do" onsubmit="return formCheck()"
							method="post" class="sign__form">
							<a href="home.do" class="sign__logo"> <img
								src="resources/img/logo.svg" alt="">
							</a>

							<div class="sign__group">
								<input type="email" id="id" name="id" required="required"
									class="sign__input" placeholder="아이디" style="width: 75%">
								<button type="button" class="idCheckButton" id="idCheck"
									style="color: white" onclick="isIdCheck()" value="No">중복체크</button>
							</div>


							<div class="sign__group">
								<input type="password" class="sign__input" id="pw" name="pw"
									required="required" placeholder="비밀번호">
							</div>

							<div class="sign__group">
								<input type="password" class="sign__input" id="pw1" name="pw1"
									required="required" placeholder="비밀번호 확인">
							</div>

							<div class="sign__group">
								<input type="text" class="sign__input" id="name" name="name"
									required="required" placeholder="이름">
							</div>

							<div class="sign__group">
								<input type="text" class="sign__input" id="tell" name="tell"
									required="required" placeholder="전화번호">
							</div>
							
							
			


							<div class="filter__item-btn dropdown-toggle">
								<label for="cars" style="color: white;">선호하는 장르 선택 : </label> 
								<select 
									id="genre" name="genre">
									
											<option value="호러" id="호러">호러</option>
											<option value="액션" id="액션">액션</option>
											<option value="드라마" id="드라마">드라마</option>
											<option value="공포" id="공포">공포</option>
											<option value="판타지" id="판타지">판타지</option>
											<option value="스릴러" id="스릴러">스릴러</option>
								
								</select>
							</div>


							<div class="sign__group sign__group--checkbox">
								<input id="remember" name="remember" type="reset"> <label
									for="remember">Reset </label>
							</div>

							<input class="sign__btn" type="submit" value="회원가입"> <span
								class="sign__text">이미 계정이 있습니다.<a href="loginForm.do">로그인</a></span>
						</form>
						<!-- registration form -->
					</div>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript">
		function isIdCheck() {
			if ($("#id").val() != '') {
				$.ajax({
					url : "ajaxIsIdCheck.do",
					type : "post",
					data : {
						"id" : $("#id").val()
					},
					dataType : "text",
					success : function(result) {
						if (result === 'false') {
							alert("이미 있는 아이디");
							$("#id").val('');
							$("#id").focus();

						} else {
							alert("사용가능한 아이디 입니다.");
							$("#idCheck").val("Yes");
							$("#idCheck").css('opacity', '0.5');
							//$("#id").css('opacity','0.5');
							$("#pw").focus()
						}
					}
				});

			} else {
				alert("ID 를 입력해 주세요");
				$("#id").focus();
			}
		}

		function formCheck() {
			if ($("idCheck").val() == 'No') {
				alert("아이디 중복 체크를 해주세요.")
				return false;
			}

			if ($("#pw").val() != $("#pw1").val()) {
				alert("패스워드가 일치하지 않습니다.");
				$("#pw").val('');
				$("#pw1").val('');
				$("#pw").focus();
				return false;
			}
			return true;
		}
	</script>
</body>

</html>