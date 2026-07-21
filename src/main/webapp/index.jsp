<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>데이터베이스 연결</title>
		<style>
			table{
				padding:10px;
				margin:0 auto;
			}
			td{
				
				height:50px;
				border:1px solid black;
			}
		</style>
	</head>
	<body>
		<% 
			Connection conn=null;
			Statement stmt=null;
			ResultSet rs=null;
			String url="jdbc:mysql://127.0.0.1:3306/form";
			String user="root";
			String pw="980417";
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection(url, user, pw);
				stmt=conn.createStatement();
				String sql="select * from form;";
				rs=stmt.executeQuery(sql);
				System.out.println(rs);
				out.print("<table>");
				while(rs.next()){
					out.print("<tr>");
					out.print("<td>"+rs.getString("bn")+"</td>");
					out.print("<td>"+rs.getString("brn")+"</td>");
					out.print("<td>"+rs.getString("name")+"</td>");
					out.print("<td>"+rs.getString("mobile")+"</td>");
					out.print("<td>"+rs.getString("office_phone")+"</td>");
					out.print("<td>"+rs.getString("address")+"</td>");
					out.print("<td>"+rs.getString("email")+"</td>");
					out.print("<td>"+rs.getString("user_pw")+"</td>");
					out.print("<td>"+rs.getString("message")+"</td>");
				
					
				
					out.print("</tr>");
				}
				out.print("</table>");	
			}catch(Exception e){
				
				out.print("오류발생");
				System.out.println(e);
			}
		
		%>
		
	
	</body>
</html>