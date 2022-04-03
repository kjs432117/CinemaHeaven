<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>마커에 인포윈도우 표시하기</title>
    
</head>
<body>
<div style="margin-top:160px">

<div id="map" align=center  style="margin-left:20%; width:60%;height:350px;">

</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=624a0b9b70e35f2d95250a644c8085f5"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(35.86994708311041, 128.59430312192532), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption);

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(35.86994708311041, 128.59430312192532); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

var iwContent = '<div style="padding:5px;">CGV아카데미 <br><a href="https://map.kakao.com/link/map/CGV아카데미,35.86994708311041,128.59430312192532" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/CGV아카데미,35.86994708311041,128.59430312192532" style="color:blue" target="_blank">길찾기</a></div>', 
    iwPosition = new kakao.maps.LatLng(35.86994708311041, 128.59430312192532); //인포윈도우 표시 위치입니다

// 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({
    position : iwPosition, 
    content : iwContent 
});
 
// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
infowindow.open(map, marker); 
</script>
</div>
<div style="margin-top: 100px; margin-top:80px;margin-left:20% margin-right:20%;">


      <div align="center">
<style>
  table {
   
   
  }
  th, td {
    
    padding: 10px;
  }
  h1 {
  text-align: center;
  }
.line{border-bottom:1px solid red;}
</style>
   <table width="920" width=150 height=150  rules="groups">
   <thead style="color:white;">
        <tr>
          <th><h1>버스</h1></th><th><h1>주차안내</h1></th><th><h1>이용요금</h1></th>
        </tr>
      </thead>
      <tbody style="color:white;">
        <tr>
          <td>동아백화점 수성점 정류장에서 하차</td><td>주차장 이용: 동아백화점 본관 지하주차장, 별관 주차장(600여대 수용)</td><td>영화관람객에 한하여 3시간 무료주차</td>
        </tr>
        <tr>
          <td>급행3, 순환3, 순환3-1, 400,400-1,401,402,414,414-1,564,604,수성1,814,수성1-1</td><td></td><td>영화관람 + 상품구매 최대 5시간 무료주차(단, 1만원 이상 구매)</td>
        </tr>
        <tr>
          <td>동아백화점 수성점 앞</td><td></td><td>출차 시, 정산소에서 티켓으로 확인(주차 도장 불필요)</td>
        </tr>
        <tr>
          <td>급행3,순환3,순환3-1,403,414,414-1,564,604,814,수성1,수성1-1</td><td></td><td></td>
        </tr>

      </tbody>
      </table>
      
            <button style="color:white;" onclick="history.back()">뒤로가기</button>
         </div>
         <br>
         <div></div>
      </div>
</body>
</html>