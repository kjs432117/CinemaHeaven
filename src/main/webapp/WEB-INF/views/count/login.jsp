<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
   <script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
   <script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>

</head>
<style>
input::placeholder {
  color: black;
  font-style: italic;
}
textarea::placeholder {
  color: blue;
  font-weight: bold;
}
</style>
<section class="section section--first section--bg" data-bg="img/section/section.jpg">
      <div class="container">
         <div class="row">
            <div class="col-12">
               <div class="section__wrap">
                  <!-- section title -->
                  <h2 class="section__title">고객과의 1:1 상담</h2>
                  <!-- end section title -->

                  <!-- breadcrumb -->
                  <!-- end breadcrumb -->
               </div>
            </div>
         </div>
      </div>
   </section>
   <!-- end page title -->
<!-- pricing -->
   <div class="section">
      <div class="container">
         <div class="row">
            <!-- plan features -->
            
            <!-- end plan features -->


            <!-- price -->
            <div style="margin-left:35%;" class="col-12 col-md-6 col-lg-4">
               <div class="price">
                  <div class="price__item price__item--first"><span>상담을 받으시려면 다시한번 로그인을 해주세요</span></div>
                  <div>
                  <form id="login-form" method="post" action="/chat.do">
                  <div style="margin-left:25%;"class="price__item"> <input type="text"  name="id"   class="form-control" name="아이디 입력" placeholder="Username" autofocus></div>
                  <div style="margin-left:25%;"class="price__item"><input type="text"  name="password" class="form-control" name="비밀번호 입력" placeholder="Userpassword" autofocus></div>
                     <button style="margin-left:25%;"type="submit" class="price__btn">로그인</button>
                     </form>
                        </div>
               </div>
            </div>
            <!-- end price -->
         </div>
      </div>
   </div>
   <!-- end pricing -->