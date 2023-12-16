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
	<%
	String id = request.getParameter("id");
	String pw = request.getParameter("passwd");
	
	String dbURL = "jdbc:mysql://localhost:3306/user_db?serverTimezone=UTC";
	String dbUser = "root";
	String dbPassword = "Peter1020429!";
	
	Connection conn = null;
	PreparedStatement pstmt = null;	
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
		
		String sql = "INSERT INTO user_tbl (id, pw) VALUES (?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.executeUpdate();
	}catch(Exception e){
		e.getMessage();
	}finally {
        if (pstmt != null) {
            try {
                pstmt.close();
            } catch (SQLException e) {
            	e.getMessage();
            }
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
            	e.getMessage();
            }
        }
        
        response.sendRedirect("reservationPage.jsp");
    }
%>
</body>
</html>