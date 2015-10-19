<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<spring:url value="/personalPage/" var="personalPage" />
<spring:url value="/market/" var="marketUrl" />
<spring:url value="/logout/" var="logOutUrl" />

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css" />

<%-- <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script> --%>

<html>
<body>
	<div class="container">
		<footer class="footer">
			<div class="footer navbar-fixed-bottom navbar-default">
				<div class="container">
					<div class="row">
						<div class="col-md-12 text-right">
							<p style="text-align: center;">
								<a href="index.html">&copy; e-lib-team</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>
</body>
</html>
