<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		session.removeAttribute("userID");
		String referrer = request.getHeader("Referer");
		response.sendRedirect(referrer);
	%>
</body>
</html>