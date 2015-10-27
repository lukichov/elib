<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<tiles:importAttribute name="cssList" />
<tiles:importAttribute name="jsList" />


<head>
<title><tiles:insertAttribute name="title" /></title>
<c:forEach var="cssValue" items="${cssList}">
	<link type="text/css" rel="stylesheet" href="<c:url value="${cssValue}"/>" />
</c:forEach>
<c:forEach var="jsValue" items="${jsList}">
	<script src="<c:url value="${jsValue}"/>"></script>
</c:forEach>
</head>
<body>


	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button> <a class="navbar-brand" href="index.html">Start Bootstrap</a>
		</div> <!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="about.html">About</a></li>
					<li><a href="services.html">Services</a></li>
					<li><a href="contact.html">Contact</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Portfolio <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="portfolio-1-col.html">1 Column Portfolio</a></li>
							<li><a href="portfolio-2-col.html">2 Column Portfolio</a></li>
							<li><a href="portfolio-3-col.html">3 Column Portfolio</a></li>
							<li><a href="portfolio-4-col.html">4 Column Portfolio</a></li>
							<li><a href="portfolio-item.html">Single Portfolio Item</a></li>
					</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Blog <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="blog-home-1.html">Blog Home 1</a></li>
							<li><a href="blog-home-2.html">Blog Home 2</a></li>
							<li><a href="blog-post.html">Blog Post</a></li>
					</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Other Pages <b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="full-width.html">Full Width Page</a></li>
							<li><a href="sidebar.html">Sidebar Page</a></li>
							<li><a href="faq.html">FAQ</a></li>
							<li><a href="404.html">404</a></li>
							<li><a href="pricing.html">Pricing Table</a></li>
					</ul></li>
			</ul>
		</div> <!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>


	<!--Start Content-->
	<div id="content" class="col-xs-12 col-sm-12"><tiles:insertAttribute name="body" /></div>
	<!--End Content-->



	<!--Start footer-->
	<div id="footer"><tiles:insertAttribute name="footer" /></div>
	<!--End footer-->

</body>
<!--End Container-->
