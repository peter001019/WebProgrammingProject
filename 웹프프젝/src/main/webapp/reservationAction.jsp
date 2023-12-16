<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<jsp:useBean id="mybean" class="beans.beans" scope="page"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String selectedDate = request.getParameter("selectedDate");
	String id = (String)session.getAttribute("id");	

	String dbURL = "jdbc:mysql://localhost:3306/user_db?serverTimezone=UTC";
	String dbUser = "root";
	String dbPassword = "Peter1020429!";
	
	Connection conn = null;
	PreparedStatement pstmt = null;	
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
		
		String sql = "UPDATE user_tbl SET date = '?' WHERE id = '?'";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, selectedDate);
		pstmt.setString(2, id);
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
       
    }
%>
<center><h1>
	<jsp:getProperty name="mybean" property="place"/>의 <%=selectedDate %>에 예약이 완료되었습니다.
	</h1></center>
</body>
</html>