<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gugudan</title>
</head>
<body>




	<table border="1">
		<c:forEach var="i" begin="1" end="9" step="1">
			<tr>
				<c:forEach var="j" begin="2" end="9" step="1">
					<td>${j} * ${i} = ${i*j}</td>
				</c:forEach>
			</tr>
		</c:forEach>

		<%-- 	<c:forEach var="i" begin="2" end="9" step="1">
		<c:forEach var="j" begin="1" end="9" step="1">
		<tr>
			<td>${i} * ${j} = ${i*j}</td>
		</tr>
		</c:forEach>
	</c:forEach> --%>


	</table>
</body>
</html>