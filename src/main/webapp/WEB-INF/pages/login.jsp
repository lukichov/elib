<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Sign in</title>
        
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css"/>
   
    </head>
    <body onload='document.loginForm.username.focus();'>
        <div class="wrapper">
	<div class="container">
        
        <%
 
String errorString = (String)request.getAttribute("error");
if(errorString != null && errorString.trim().equals("true")){
out.println("Incorrect login name or password. Please retry using correct login name and password.");
}
%>
        
        <form name="f" action="<c:url value='login' />" method="POST" >
            Login:          
            <input type="text" name="username">
            Password:
            <input type="password" name ="password">
            <input name="submit" type ="submit" value="Login">
            <input type ="submit" formaction="registration" value="Registration"> 
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
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
