<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mybean" class="beans.beans" scope="page"/>
<jsp:setProperty name="mybean" property="place" value="and" />

<!DOCTYPE html>
<html lang="kor">
<%
	String place_name = request.getParameter("place");
%>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/frame.css">
    <link rel="stylesheet" href="css/menu.css">
    <link rel="stylesheet" href="css/picture_page.css">
    <link rel="stylesheet" href="css/Calendar.css">
    <title>동국네컷</title>
</head>

<body class="wrapper">
    <script src="js/calendar.js"></script>
    <header>
        <img src="img/로고.svg" name="logo">
        <nav>
            <%if(session.getAttribute("userID") == null){%>
        		<a href="login.jsp" id="logbutton">로그인</a>
        	<%}else{ %>
        		<a href="logoutAction.jsp" id="logbutton">로그아웃</a>
        	<%} %> 
            <a href="MyPage.jsp" id="MyPage">MyPage</a>
        </nav>
    </header>

    <main class="container">
        <div id="menu">
            <div id="menu_title">메뉴</div>
            <ul>
                <li><a href="MyPage.jsp">내 프로필</a></li>
                <li><a href="#">사진 보기</a></li>
                <li><a href="reservationPage.jsp">예약 현황</a></li>
                <li><a href="#">친구 관리</a></li>
            </ul>
        </div>

        <div id="content">
            <div id="content_box">
                <section>
                    <h1><%=place_name %> 예약</h1><br>
                    <table class="Calendar">
                        <thead>
                            <tr>
                                <td onClick="prevCalendar();" style="cursor:pointer;">&#60;</td>
                                <td colspan="5">
                                    <span id="calYear"></span>년
                                    <span id="calMonth"></span>월
                                </td>
                                <td onClick="nextCalendar();" style="cursor:pointer;">&#62;</td>
                            </tr>
                            <tr>
                                <td>일</td>
                                <td>월</td>
                                <td>화</td>
                                <td>수</td>
                                <td>목</td>
                                <td>금</td>
                                <td>토</td>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                    <form action="reservationAction.jsp" method="POST">
                        <button class="submit" type="submit">제출하기</button>
                    </form>
                </section>
            </div>
        </div>
    </main>

    <footer>
        <b>Contact</b>
        <span class="copyright">한승우 옥선우 정종욱</span>
        <span class="email">peter001019@naver.com</span>
    </footer>
</body>

</html>