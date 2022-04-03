<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<ul
	class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
	id="accordionSidebar">

	<!-- Sidebar - Brand -->
	<a
		class="sidebar-brand d-flex align-items-center justify-content-center"
		href="main.do">
		<div class="sidebar-brand-icon rotate-n-15">
			<i class="fas fa-laugh-wink"></i>
		</div>
		<div class="sidebar-brand-text mx-3">
			CinemaHeaven Admin <sup></sup>
		</div>
	</a>

	<!-- Divider -->
	<hr class="sidebar-divider my-0">

	<!-- Nav Item - Dashboard -->
	<li class="nav-item active"><a class="nav-link" href="main.do">
			<i class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span>
	</a></li>

	<!-- Divider -->
	<hr class="sidebar-divider">

	<!-- Heading -->
	<div class="sidebar-heading">Features</div>

	<!-- Nav Item - Tables -->
	<li class="nav-item"><a class="nav-link" href="clientSelectList.do">
			<i class="fas fa-fw fa-table"></i> <span>Members</span>
	</a></li>
	<li class="nav-item"><a class="nav-link" href="moviesList.do">
			<i class="fas fa-fw fa-table"></i> <span>영화관리</span>
	</a></li>
	<li class="nav-item"><a class="nav-link"
		href="moviesReserveList.do"> <i class="fas fa-fw fa-table"></i> <span>상영관리</span>
	</a></li>

	<!-- Divider -->
	<hr class="sidebar-divider d-none d-md-block">

	<!-- Sidebar Toggler (Sidebar) -->
	<div class="text-center d-none d-md-inline">
		<button class="rounded-circle border-0" id="sidebarToggle"></button>
	</div>


</ul>