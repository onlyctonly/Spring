<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
		<select name="l">
			<option>java</option>
			<option>ruby</option>
			<option>php</option>
		</select>
		<input type="submit">
	</form>
<%
	String l = request.getParameter("l");
	if(l!=null){
		Cookie c = new Cookie("app.l", l);
		c.setMaxAge(60*60);
		response.addCookie(c);
	}
	
	Cookie[] cs = request.getCookies();
	if (cs!=null){
		for (Cookie enty:cs){
			out.println(enty.getName());
			out.println(enty.getValue());
		}
	}
%>
</body>
</html>