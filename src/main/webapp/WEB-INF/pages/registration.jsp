<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
    <html>
        <head>
            <title> Sign up </title>
            
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css"/>
            
        </head>
        <body>
            <div class="wrapper">
	<div class="container">
      <form modelAttribute="user" name="registrForm" method="POST" action="<c:url value='registr' />">
            Name:
            <input type="text" name ="userName" value="">
            E-mail:
            <input type="text" name ="userEmail" value="">
            Login:
            <input type="text" name ="userLogin" value="">
            Password:
            <input type="password" name ="userPassword" value="">
            Confirm password:
            <input type="password" name ="userPassword2" value="">
            <input type ="submit" name="submit" value="Registration">
        </form>     
            </div>
	<ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
</div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="${pageContext.request.contextPath}/js/login.js"></script>
        </body>
    </html>

