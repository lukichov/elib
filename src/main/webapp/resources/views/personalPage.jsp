<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<spring:url value="/" var="homeUrl" />
<spring:url value="/logout/" var="logOutUrl" />


	<h1>${greetingMessage}</h1>

	<a href="${homeUrl}">Go Home!</a>
	<br>

	<sec:authorize access="isAuthenticated()">
		<br>


		<div class="well">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#home" data-toggle="tab">Profile</a></li>
				<li><a href="#profile" data-toggle="tab">Password</a></li>
		</ul>
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane active in" id="home"><form:form method="POST" class="form-horizontal"
						action="${pageContext.request.contextPath}/user/update/" modelAttribute="user">

						<form:errors path="*" cssClass="has-error formError" cssStyle="color: #D15E5E;" />
						<div class="form-group"><spring:bind path="userId">
								<label for="userId">Id</label>
								<form:input disabled="true" path="userId" value="${user.userId}" class="input-xlarge" />
							</spring:bind></div>
						<div class="form-group"><spring:bind path="userName">
								<label for="userName">Username</label>
								<form:input type="text" path="userName" value="${user.userName}" class="input-xlarge" />
							</spring:bind></div>
						<div class="form-group"><spring:bind path="userEmail">
								<label for="userEmail">Email</label>
								<form:input type="text" path="userEmail" value="${user.userEmail}" class="input-xlarge" />
							</spring:bind></div>
						<div class="form-group"><spring:bind path="userLogin">
								<label for="userLogin">Login</label>
								<form:input type="text" path="userLogin" value="${user.userLogin}" class="input-xlarge" />
							</spring:bind></div>
						<div class="form-group"><spring:bind path="blocked">
								<label for="blocked">Blocked</label>
								<form:checkbox path="blocked" value="${user.blocked}" class="input-xlarge" />
							</spring:bind></div>

						<div>
							<button class="btn btn-primary">Update</button>
						</div>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

					</form:form></div>
				<div class="tab-pane fade" id="profile"><form:form method="POST" class="form-horizontal"
						action="${pageContext.request.contextPath}/user/updatePass/" modelAttribute="user">
						<spring:bind path="userId">
							<form:hidden path="userId" class="input-xlarge" />
						</spring:bind>
						<div class="form-group"><spring:bind path="userPassword">
								<label for="userPassword">New password</label>
								<form:password path="userPassword" class="input-xlarge" />
							</spring:bind></div>
					
						<div>
							<button class="btn btn-primary">Update</button>
						</div>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

					</form:form></div>
		</div>
		</div>


		<form action="${logOutUrl}" method="post">
			<input type="submit" value="Log out" /> <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>
	</sec:authorize>

 <script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-34731274-1']);
    _gaq.push(['_trackPageview']);
    _gaq.push(['_trackEvent', 'sharing', 'viewed full-screen', 'snippet PAb',0,true]);
    (function() {
      var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
      ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
    </script>
    <script type="text/javascript">
    (function($) { 
        $('#theme_chooser').change(function(){
            whichCSS = $(this).val();
            document.getElementById('snippet-preview').contentWindow.changeCSS(whichCSS);
        });
    })(jQuery);
    </script>
