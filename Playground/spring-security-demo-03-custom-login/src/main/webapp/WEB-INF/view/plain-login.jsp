<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login page</title>
<style>
	.failed {
		color:red;
	}
</style>
</head>
<body>
<h3>My Login Page</h3>

<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
	
	<c:if test="${param.error!=null}">
		<i class="failed">invalid username/password</i><br/>
	</c:if>
	
	<c:if test="${param.logout!=null }">
		<i class="failed">logged out</i><br/>
	</c:if>
	Username: <input type="text" name="username" /><br/>
	Password: <input type="password" name="password" /><br/>
	<input type="submit" value="login" />
</form:form>
</body>
</html>