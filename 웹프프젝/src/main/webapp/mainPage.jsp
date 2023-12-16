<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link rel="stylesheet" href="css/frame.css">
  <link rel="stylesheet" href="css/menu.css">
  <title>동국네컷</title>
</head>
<body>
<body class="wrapper">
  <!-- 헤더 부분 -->
  <header>
      <div>
        <img src="로고.svg" alt="로고">
      </div>

    <nav>
      <div id="logout">로그아웃</div>
      <div id="MyPage"><a href="#">MyPage</a></div>
    </nav>
    
  </header>

  <!-- 옆에 내비게이션 -->
  <main class="container">
    <div id="menu">
      <div id="menu_title">메뉴</div>
      <ul>
        <li><a href="#">내 프로필</a></li>
        <li><a href="#">사진 보기</a></li>
        <li><a href="#">예약 현황</a></li>
        <li><a href="#">친구 관리</a></li>
      </ul>
    </div>
    <!-- 컨텐츠 부분 -->
    <div id="content">
      <div id="content_box"></div>
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