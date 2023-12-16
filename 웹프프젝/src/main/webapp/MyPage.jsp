<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/frame.css">
<link rel="stylesheet" href="css/menu.css">
<link rel="stylesheet" href="css/mypage.css">
<title>동국네컷</title>
</head>
<body>
<body class="wrapper">
    <!-- 헤더 부분 -->
    <header>
        <div>
            <img src="img/로고.svg" alt="로고">
        </div>

        <nav>
            <%if(session.getAttribute("userID") == null){%>
        		<a href="login.jsp" id="logbutton">로그인</a>
        	<%}else{ %>
        		<a href="logoutAction.jsp" id="logbutton">로그아웃</a>
        	<%} %> 
            <a href="MyPage.jsp" id="MyPage">MyPage</a>
        </nav>

    </header>

    <!-- 옆에 내비게이션 -->
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
        <!-- 컨텐츠 부분 -->
        <div id="content">
            <div id="content_box">
                <!-- 여기에 컨텐츠를 넣으시오 -->
                <table id="myname">
                    <tr>
                        <td><img src="img/열쇠.svg" alt="열쇠"></td>
                        <td>Honggildong</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td id="email">e-mail</td>
                    </tr>
                </table>
                <hr>
                <div id="correction">
                    <div id="email_block">
                        e-mail
                        <button>수정</button>
                    </div>
                    <div id="passwd_block">
                        비밀 번호 수정
                        <button>수정</button>
                    </div>
                </div>
                <hr>
                <div id="self_intro"> 자기 소개</div>
            </div>
        </div>
    </main>

    <!-- footer 부분 -->
    <footer>
        <b>Contact</b>
        <span class="copyright">한승우 옥선우 정종욱</span>
        <span class="email">peter001019@naver.com</span>
    </footer>
</body>
</html>