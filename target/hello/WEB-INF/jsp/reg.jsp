<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html lang="en-US" data-ng-app="Myapp">
<head>
<%@include file="/WEB-INF/includes/Frameworks.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<link href="resources/css/reg.css" rel="stylesheet">
<link href="http://cdn.phpoll.com/css/animate.css" rel="stylesheet" >
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/AngularControllers/App.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/AngularControllers/Home.js"></script>

<body >

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    	<div class="container-fluid">
			<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</button>
				<a class="navbar-brand" href="">Hello</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="">Home</a></li>
					<li><a href="">About</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="http://phpoll.com/register" class="dropdown-toggle" data-toggle="dropdown">Register <span class="caret"></span></a>
                        <ul class="dropdown-menu dropdown-lr animated flipInX" role="menu">
                        
						<li>
                                <div class="text-center"><h3><b>Register</b></h3></div>
								<form role="form" data-ng-submit="submit()" data-ng-controller="RegController" method="post">
									<div class="form-group">
										<input type="text" name="name" id="name" tabindex="1" class="form-control" placeholder="name" required data-ng-model="name" value="">
									</div>
									<div class="form-group">
										<input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" required data-ng-model="username" value="">
									</div>
									<div class="form-group">
										<input type="password" name="password" id="password" tabindex="1" class="form-control" placeholder="password" required data-ng-model="password" value="">
									</div>
									<div class="form-group">
										<input type="password" name="re enter password" id="password" tabindex="1" class="form-control" placeholder="re enter password" required data-ng-model="Confirm_Password" value="">
									</div>
									<div class="form-group">
										<input type="email" name="email address" id="email" tabindex="2" class="form-control" placeholder="Email address" required data-ng-model="email">
									</div>
									<div class="form-group">
										<input type="text" name="mobile no." id= "mobile no." tabindex="2" class="form-control" placeholder="mobile no." required data-ng-model="mobile">
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-xs-9 col-xs-offset-2">
												<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-info" value="Register Now">
											</div>
										</div>
									</div>
                                    <input type="hidden" class="hide" name="token" id="token" value="7c6f19960d63f53fcd05c3e0cbc434c0">
								</form>
            </li>
                        </ul>
                    </li>
                     <sec:authorize access="isAuthenticated()">
                    
                    
                    
                    <li><a href="${pageContext.request.contextPath}/blog">Blog</a></li>
					<li><a href="${pageContext.request.contextPath}/forum">Forum</a></li>
					<li><a href="${pageContext.request.contextPath}/chat">Chat</a></li>
					<li><a style="color: white">Hello  <b><sec:authentication property="principal.username" /></b></a></li>
						<li><a href="perform_logout"><span
								class="glyphicon glyphicon-log-out"></span></a></li>
					</sec:authorize> 
                    <li class="dropdown">
                        <a href="http://phpoll.com/login" class="dropdown-toggle" data-toggle="dropdown">Log In <span class="caret"></span></a>
                        <ul class="dropdown-menu dropdown-lr animated slideInRight" role="menu">
             
                            <div class="col-lg-12">
                            
                                <div class="text-center"><h3><b>Log In</b></h3></div>
                                <form  action="perform_login" method="post"><!-- <span class="glyphicon glyphicon-log-out"></span> -->
                                    <div class="form-group">
                                        <label for="username">Username</label>
                                        <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="" autocomplete="off">
                                    </div>

                                    <div class="form-group">
                                        <label for="password">Password</label>
                                        <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password" autocomplete="off">
                                    </div>

                                   <div class="form-group">
                                        <div class="row">
                                            <div class="col-xs-0">
                                                <input type="checkbox" tabindex="3" name="remember" id="remember">
                                                <label for="remember"> Remember Me</label>
                                            </div> 
                                            <div class="col-xs-8 pull-right">
                         <input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-success" value="Log In">
                                            </div>
                                         </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row-lg-12">
                                            <div class="col-lg-12">
                                                <div class="text-center">
                                                    <a href="http://phpoll.com/recover" tabindex="5" class="forgot-password">Forgot Password?</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <input type="hidden" class="hide" name="token" id="token" value="a465a2791ae0bae853cf4bf485dbe1b6">
                                </form>
                            </div>
                        </ul>
                    </li>
                </ul>
			</div>
		</div>
	</nav>
 <%--   <sec:authorize access="isAuthenticated()">
                    
                    
                    
                    <li><a href="${pageContext.request.contextPath}/blog">Blog</a></li>
					<li><a href="${pageContext.request.contextPath}/forum">Forum</a></li>
					<li><a href="${pageContext.request.contextPath}/chat">Chat</a></li>
					<li><a style="color: white">Hello  <b><sec:authentication property="principal.username" /></b></a></li>
						<li><a href="perform_logout"><span
								class="glyphicon glyphicon-log-out"></span></a></li>
					</sec:authorize>   --%>
 <div class="container">
    <div class="row">
        <div class="col-xs-12 text-center">Be sure to include <a href="http://daneden.github.io/animate.css/" target="_blank" title="animate.css">animate.css</a> for the animations</div>
    </div>
</div> 
<!-- <div id="tabs" class="container" style="margin-top: 25px"> -->



<%@include file="/WEB-INF/jsp/Body.jsp" %>
<c:choose>
		<c:when test="${BlogClicked}">
			<div class="container">
				<c:import url="/WEB-INF/jsp/Blog.jsp">
				</c:import>
			</div>
		</c:when>
		<c:when test="${ForumClicked}">
			<div class="container">
				<c:import url="/WEB-INF/jsp/Forum.jsp">
				</c:import>
			</div>
		</c:when>
		<c:when test="${IndividualForum}">
			<div class="container">
				<c:import url="/WEB-INF/jsp/IndividualForum.jsp">
				</c:import>
			</div>
		</c:when>
		<c:when test="${IndividualBlog}">
			<div class="container">
				<c:import url="/WEB-INF/jsp/IndividualBlog.jsp">
				</c:import>
			</div>
		</c:when>
		<c:when test="${ChatClicked}">
			<div class="container">
				<c:import url="/WEB-INF/jsp/Chat.jsp">
				</c:import>
			</div>
		</c:when>
		<c:otherwise>
			<sec:authorize access="hasRole('ROLE_USER')">
				<div class="container">
					<c:import url="/WEB-INF/jsp/Body.jsp">
					</c:import>
				</div>
			</sec:authorize>
			</c:otherwise>
	</c:choose>
<%-- <div id="tabs" class="container" style="margin-top: 25px">
		<ul>
			 <li><a href="#fragment-1">Blog</a></li> 
			<li><a href="#fragment-2">Forum</a></li>
		     <li><a href="#fragment-3">Chat</a></li>  
		</ul>
		 <div id="fragment-1">
			<%@include file="/WEB-INF/jsp/Blog.jsp"%>
		</div>  
		<div id="fragment-2">
			<%@include file="/WEB-INF/jsp/Forum.jsp"%>
		</div>
		 <div id="fragment-3">
			<%@include file="/WEB-INF/jsp/Chat.jsp"%>
		</div> 
	</div> --%>
	<script>
		$(function() {
			$("#tabs").tabs();
		});
	</script>
</body>
</html>