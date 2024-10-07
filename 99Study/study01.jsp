<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
public int test01(int a, int b){
	return a - b +1 ;
}
public String test02(int year){
	String[] animal = {"쥐","소","호랑이","토끼","용","뱀","말","양","원숭이","닭","개","돼지"};
	String ani = animal[(year-4)%12];
	
/* 	switch(year%12){
	case 4 : ani = "쥐"; break;
	case 5 : ani = "소"; break;
	case 6 : ani = "호랑이"; break;
	case 7 : ani = "토끼"; break;
	case 8 : ani = "용"; break;
	case 9 : ani = "뱀"; break;
	case 10 : ani = "말"; break;
	case 11 : ani = "양"; break;
	case 0 : ani = "원숭이"; break;
	case 1 : ani = "닭"; break;
	case 2 : ani = "개"; break;
	case 3 : ani = "돼지"; break;	
	} */
	
	return ani;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
try{
	Date date = new Date();
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
	int today = Integer.parseInt(dateFormat.format(date));
	int year = Integer.parseInt(request.getParameter("year"));
	int age = test01(today, year);
	String ani = test02(year);
	out.println(year + "년에 태어난 당신은 </br>" + today + "년 올해 한국 나이로  " + age + "살이고 </br>" + ani + "띠입니다.");
} catch(Exception e){
	out.println("예외 발생 : 매개변수 year가 null 입니다.");
}
%>
</body>
</html>