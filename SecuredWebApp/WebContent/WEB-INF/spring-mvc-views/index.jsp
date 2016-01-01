<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set scope="request" var="ctxPath" value="${pageContext.request.contextPath}" />
<c:set scope="request" var="ctxName" value="${pageContext.servletContext.servletContextName}" />
<c:set scope="request" var="pageName">Spring MVC Welcome Page</c:set>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta name="author" content="weikhong">
	<title><c:out value="${ctxName}" /> :: <c:out value="${pageName}" /></title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<!-- bootstrap 3.2.0 -->
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<!-- Font Awesome Icons -->
	<link href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<!-- Ionicons -->
	<link href="//code.ionicframework.com/ionicons/1.5.2/css/ionicons.min.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
		/* http://bootsnipp.com/snippets/featured/mix-amp-match-login */
		/* Credit to bootsnipp.com for the css for the color graph */
		.colorgraph {
			height: 5px; border-top: 0; background: #c4e17f; border-radius: 5px;
			background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
			background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
			background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
			background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
		}
	</style>
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<div class="container">
		<div class="row" style="margin-top:20px">
			<div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
				<form role="form" action="<c:url value='j_spring_security_check' />" method="POST"><fieldset>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<h2>Please Sign In</h2>
					<hr class="colorgraph" />
					<div class="form-group">
						<input type="text" name="email" id="email" class="form-control input-lg" placeholder="Email Address">
					</div>
					<div class="form-group">
						<input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password">
					</div>
					<span class="button-checkbox">
						<button type="button" class="btn" data-color="info">Remember Me</button>
						<input type="checkbox" name="remember_me" id="remember_me" checked="checked" class="hidden">
						<a href="" class="btn btn-link pull-right">Forgot Password?</a>
					</span>
					<hr class="colorgraph" />
					<div class="row">
						<div class="col-xs-6 col-sm-6 col-md-6">
							<input type="submit" class="btn btn-lg btn-success btn-block" value="Sign In">
						</div>
						<div class="col-xs-6 col-sm-6 col-md-6">
							<a href="" class="btn btn-lg btn-primary btn-block">Register</a>
						</div>
					</div>
				</fieldset></form>
			</div>
		</div>
	</div>
	<!-- jQuery 2.0.2 -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
</body>
</html>