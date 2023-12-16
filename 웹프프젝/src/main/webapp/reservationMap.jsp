<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/frame.css">
    <link rel="stylesheet" href="css/menu.css">
    <link rel="stylesheet" href="css/picture_page.css">
    <link rel="stylesheet" href="css/map.css">
    <script defer src="js/map.js"></script>
    <script
     defer
     src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDTw2u6rtfLJDGG4st0byrx4Sz8Dy3T6C0&callback=initMap"
    ></script>
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
                <li><a href="reservationPage.jsp">예약 하기</a></li>
                <li><a href="#">친구 관리</a></li>
            </ul>
        </div>

        <div id="content">
            <div id="content_box">
                <section>
                    <h1>사진관 예약</h1><br>
                    <div id="map"></div>
   					<form action="reservationPage.jsp" method="POST">
   						<input type="hidden" id="selectedPlace" name="place">
        				<input type="button" value="mono mansion" name="mono mansion"> 
        				<input type="button" value="1percent" name="1percent">
        				<input type="button" value="복귀하기" name="reset">
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