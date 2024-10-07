<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - out</title>
</head>
<body>
    <%
	out.print("출력되지 않는 텍스트"); //버퍼에 저장
	out.clearBuffer();            //버퍼를 비움 (맨 윗줄 빈칸 사라짐)
	
	out.print("<h2>out 내장 객체</h2>");
	
	out.print("출력 버퍼의 크기 : " + out.getBufferSize() + "<br>");
	out.print("남은 버퍼의 크기 : " + out.getRemaining() + "<br>");
	
	out.flush();
	out.print("flush 후 버퍼의 크기 : " + out.getRemaining() + "<br>");
	
	out.print(1);
	out.print(false);
	out.print('가');
	%> 
	
<%-- 	출력되지 않는 텍스트     
	
	<h2>out 내장 객체</h2>
	
	출력 버퍼의 크기 :  <%=out.getBufferSize() %> <br>
	남은 버퍼의 크기 : <%=out.getRemaining()%><br>
	flush 후 버퍼의 크기 : <%=out.getRemaining() %><br>
	1
	false
	가 --%>
	
</body>
</html>