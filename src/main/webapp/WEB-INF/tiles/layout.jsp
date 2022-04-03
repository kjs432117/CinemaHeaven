<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600%7CUbuntu:300,400,500,700" rel="stylesheet">

	<!-- CSS -->

	<link rel="stylesheet" href="resources/css/bootstrap-reboot.min.css">
	<link rel="stylesheet" href="resources/css/bootstrap-grid.min.css">
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
	<link rel="stylesheet" href="resources/css/jquery.mCustomScrollbar.min.css">
	<link rel="stylesheet" href="resources/css/nouislider.min.css">
	<link rel="stylesheet" href="resources/css/ionicons.min.css">
	<link rel="stylesheet" href="resources/css/plyr.css">
	<link rel="stylesheet" href="resources/css/photoswipe.css">
	<link rel="stylesheet" href="resources/css/default-skin.css">
	<link rel="stylesheet" href="resources/css/main.css" type="text/css">

	<!-- Favicons -->
	<link rel="icon" type="image/png" href="resources/icon/favicon-32x32.png" sizes="32x32">
	<link rel="apple-touch-icon" href="resources/icon/favicon-32x32.png">
	<link rel="apple-touch-icon" sizes="72x72" href="resources/icon/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="resources/icon/apple-touch-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="144x144" href="resources/icon/apple-touch-icon-144x144.png">

	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="author" content="Dmitry Volkov">

</head>

<body>
	
	<!-- header -->
	<tiles:insertAttribute name="header"/>
	<!-- end header -->

	<!-- home -->
	<tiles:insertAttribute name="body"/>
	<!-- end partners -->

<%-- 
	<!-- footer -->
	<tiles:insertAttribute name="footer"/>
	<!-- end footer -->
 --%>	

	<!-- JS -->
	<script src="resources/js/jquery-3.3.1.min.js"></script>
	<script src="resources/js/bootstrap.bundle.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/jquery.mousewheel.min.js"></script>
	<script src="resources/js/jquery.mCustomScrollbar.min.js"></script>
	<script src="resources/js/wNumb.js"></script>
	<script src="resources/js/nouislider.min.js"></script>
	<script src="resources/js/plyr.min.js"></script>
	<script src="resources/js/jquery.morelines.min.js"></script>
	<script src="resources/js/photoswipe.min.js"></script>
	<script src="resources/js/photoswipe-ui-default.min.js"></script>
	<script src="resources/js/main.js"></script>
	<script src="resources/js/jquery.twbsPagination.js"></script>

</html>