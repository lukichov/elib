<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

      
<html xmlns:th="http://www.thymeleaf.org" xmlns:tiles="http://www.thymeleaf.org">



<div class="login-card">
	<h1>${message}</h1>
		<div id="content">
			
		</div>
	
	${msg}
	
	<form:form method="POST"  action="login">                
		
			<input type="text" name="username" placeholder="name" value="${name}" >
			<input type="password" name="password" placeholder="password" > 
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<input type="submit" name="login" value ="Login">
			
	</form:form>
	
	<div class="login-help">
		<a href="${pageContext.request.contextPath}/register">Registration</a>   <a href="${pageContext.request.contextPath}/restorePass">Restore password</a>
	</div>
</div>
