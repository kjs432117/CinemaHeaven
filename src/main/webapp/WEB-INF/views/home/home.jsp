<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
   <title>Home</title>
</head>
<body>

   <!-- expected premiere -->
   <section class="section section--bg" data-bg="resources/img/section/section.jpg" style="padding:90px;">
      <div class="container">
         <div class="row">
            <!-- section title -->
            <div class="col-12">
               <h2 class="section__title">인기영화</h2>
            </div>
            <!-- end section title -->

            <!-- card -->
            
           <c:forEach items="${top3}" var="top3">
            
            <div class="col-12 col-sm-4 col-lg-4 col-xl-4">
               <div class="card">
                  <div class="card__cover">
                     <img src="resources/img/movies/${top3.movie_poster }" alt="">
                     <a href="detail.do?id=${top3.movie_id}" class="card__play">
                        <i class="icon ion-ios-play"></i>
                     </a>
                  </div>
                  <div class="card__content">
                     <h3 class="card__title"><a href="detail.do?id=${top3.movie_id}">${top3.movie_title}</a></h3>
                     <span class="card__category">
                        <a href="#">${top3.movie_genre}</a>
                     </span>
                     <span class="card__rate"><i class="icon ion-ios-star"></i>예매율: ${top3.movie_rate}%</span>
                  </div>
               </div>
            </div>
            
            </c:forEach>
            <!-- end card -->


         </div>
      </div>
   </section>
   <!-- end expected premiere -->
 
 
 
 <!-- content -->
 
 
   <section class="content">
      <div class="content__head">
         <div class="container">
            <div class="row">
               <div class="col-12">
                  <!-- content title -->
                  <h2 class="content__title"></h2>
                  <!-- end content title -->


                  <!-- content tabs nav -->
                  <ul class="nav nav-tabs content__tabs" id="content__tabs" role="tablist">

                     <li class="nav-item">
                        <a class="nav-link active show" data-toggle="tab" href="#tab-2" role="tab" aria-controls="tab-2" aria-selected="true">상영중</a>
                     </li>
   
                     <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#tab-3" role="tab" aria-controls="tab-3" aria-selected="false">개봉예정</a>
                     </li>

                  </ul>
                  <!-- end content tabs nav -->
                  
                  

                  <!-- content mobile tabs nav -->
                  <div class="content__mobile-tabs" id="content__mobile-tabs">
                     <div class="content__mobile-tabs-btn dropdown-toggle" role="navigation" id="mobile-tabs" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <input type="button" value="New items">
                        <span></span>
                     </div>

                     <div class="content__mobile-tabs-menu dropdown-menu" aria-labelledby="mobile-tabs">
                        <ul class="nav nav-tabs" role="tablist">

                           <li class="nav-item"><a class="nav-link active show" id="2-tab" data-toggle="tab" href="#tab-2" role="tab" aria-controls="tab-2" aria-selected="true">상영중</a></li>

                           <li class="nav-item"><a class="nav-link" id="3-tab" data-toggle="tab" href="#tab-3" role="tab" aria-controls="tab-3" aria-selected="false">개봉예정</a></li>

                        </ul>
                     </div>
                  </div>
                  <!-- end content mobile tabs nav -->
               </div>
            </div>
         </div>
      </div>


      <div class="container">
         <!-- content tabs -->
         <div class="tab-content" id="myTabContent">

            <div class="tab-pane fade active show" id="tab-2" role="tabpanel" aria-labelledby="2-tab">
               <div class="row">
               
               
                  <!-- card -->
                  
                 <c:forEach items="${showings}" var="showing">
                  
                  <div class="col-6 col-sm-4 col-lg-3 col-xl-2">
                     <div class="card">
                        <div class="card__cover">
                           <img src="resources/img/movies/${showing.movie_poster }" alt="">
                           <a href="detail.do?id=${showing.movie_id}" class="card__play">
                              <i class="icon ion-ios-play"></i>
                           </a>
                        </div>
                        <div class="card__content">
                           <h3 class="card__title"><a href="detail.do?id=${showing.movie_id}">${showing.movie_title }</a></h3>
                           <span class="card__category">
                              <a href="#">${showing.movie_genre }</a>
                           </span>
                                                       <span class="card__rate"><i class="icon ion-ios-star"></i>예매율: ${showing.movie_rate }%</span>
                        </div>
                     </div>
                  </div>
                  
            </c:forEach>
                  
                  <!-- end card -->

               </div>
            </div>

            <div class="tab-pane fade" id="tab-3" role="tabpanel" aria-labelledby="3-tab">
               <div class="row">
               
                  <!-- card -->
                  
            <c:forEach items="${befores}" var="before">
                  
                  <div class="col-6 col-sm-4 col-lg-3 col-xl-2">
                     <div class="card">
                        <div class="card__cover">
                           <img src="resources/img/movies/${before.movie_poster }" alt="">
                           <a href="detail.do?id=${before.movie_id}" class="card__play">
                              <i class="icon ion-ios-play"></i>
                           </a>
                        </div>
                        <div class="card__content">
                           <h3 class="card__title"><a href="detail.do?id=${before.movie_id}">${before.movie_title }</a></h3>
                           <span class="card__category">
                              <a href="#">${before.movie_genre}</a>
                           </span>
                           <span class="card__rate"><i class="icon ion-ios-star"></i>예매율: ${before.movie_rate }%</span>
                        </div>
                     </div>
                  </div>
                  
                  </c:forEach>
                  <!-- end card -->

               </div>
            </div>

         </div>
         <!-- end content tabs -->
      </div>
   </section>
   <!-- end content -->

</body>
</html>