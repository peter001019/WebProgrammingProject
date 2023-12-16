<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<%
	String id = request.getParameter("id");
	String pw = request.getParameter("passwd");
	
	String dbURL = "jdbc:mysql://localhost:3306/user_db?serverTimezone=UTC";
	String dbUser = "root";
	String dbPassword = "Peter1020429!";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
		
		String sql = "SELECT * FROM user_tbl WHERE id=? AND pw=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			session.setAttribute("userID", id);
			response.sendRedirect("reservationPage.jsp");
		} else{
			session.setAttribute("errorMessage", "아이디와 비밀번호를 다시 입력해주세요!");
			response.sendRedirect("login.jsp");
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (pstmt != null) {
            try {
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>
</div>
</body>
</html>