<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="common.JDBCConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC</title>
<style>
table {
	text-align: center;
	border-collapse: collapse;
	
}
</style>
</head>
<body>
	<h2>board</h2>
	<table border="1">
		<tr>
			<th>num</th>
			<th>title</th>
			<th>name</th>
			<th>postdate</th>
			<th>visitcount</th>
		</tr>

		<%
		String str = "musthave";
		String str2 = request.getParameter("str");
		if(str2 != null){
			str = str2;
		}	
		JDBCConnect jdbc = new JDBCConnect();
		String sql = "select b.num,b.title,m.name,b.postdate,b.visitcount from board b,member m where b.id='"
		             + str +"' and b.id = m.id";
		Statement stmt = jdbc.con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		while (rs.next()) {
			int num = rs.getInt("b.num");
			String title = rs.getString("b.title");
			String name = rs.getString("m.name");
			java.sql.Date postdate = rs.getDate("b.postdate");
			int visitcount = rs.getInt("b.visitcount");
		%>
		<tr>
			<td><%=num%></td>
			<td><%=title%></td>
			<td><%=name%></td>
			<td><%=postdate%></td>
			<td><%=visitcount%></td>
		</tr>
		<%
		}
		jdbc.close();
		%>
		</table>
	
</body>
</html>