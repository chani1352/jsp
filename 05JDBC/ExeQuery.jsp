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
	<h2>회원 목록 조회 테스트(executeQuery() 사용)</h2>
	<table border="1">
		<tr>
			<th>id</th>
			<th>pw</th>
			<th>name</th>
			<th>regidate</th>
		</tr>
		<%
		JDBCConnect jdbc = new JDBCConnect();

		String sql = "select id,pass,name,regidate from member";
		Statement stmt = jdbc.con.createStatement();

		ResultSet rs = stmt.executeQuery(sql);
		while (rs.next()) {
			String id = rs.getString(1);
			String pw = rs.getString(2);
			String name = rs.getString("name");
			java.sql.Date regidate = rs.getDate("regidate");

			/* 		out.println(String.format("%s %s %s %s",id,pw,name,regidate) +
			"<br/>");	 */
		%>
		<tr>
			<td><%=id%></td>
			<td><%=pw%></td>
			<td><%=name%></td>
			<td><%=regidate%></td>
		</tr>
		<%
		}

		jdbc.close();
		%>
	</table>

</body>
</html>