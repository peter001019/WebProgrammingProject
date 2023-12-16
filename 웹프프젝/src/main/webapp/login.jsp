<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/login.css">
<meta charset="UTF-8">
<title>동국네컷</title>
<%
	String errorMessage = (String)session.getAttribute("errorMessage");

	if(errorMessage != null){
		out.println("<script>alert('" + errorMessage + "');</script>");
		session.removeAttribute("errorMessage");
	}
%>
</head>
<body>
<body class="wrapper">
  <header>
    <div>
      <img src="img/로고.svg" alt="로고">
    </div>

  </header>
  <div id="content">
    <a href="#">
      <img src="img/arrow-left.svg" alt="화살표">
    </a>
    <div id="logofont">Login</div>
    <form id="outlogbox" method="post" action="loginAction.jsp">
      <div id="inlogbox">
        <table>
          <tr>
            <td id="table_size">ID : </td>
            <td><input type="text" name="id"></td>
          </tr>
        </table>
        <hr>
        <table>
          <tr>
            <td id="table_size">PW : </td>
            <td><input type="password" name="passwd"></td>
          </tr>
        </table>
      </div>
      <input id="submit_signup" type="submit" value="로그인">
    </form>
  </div>

  <footer>여기는 footer</footer>
</body>
</html>