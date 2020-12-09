<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% //<% 스크립틀릿 : java 코드 사용 가능
	String name = (String)request.getAttribute("name");
	String age = (String)request.getAttribute("age");
	String gender = (String)request.getAttribute("gender");
	String city = (String)request.getAttribute("city");
	String height = (String)request.getAttribute("height");
	String food = (String)request.getAttribute("foods");
%>
<!--
	getParameter : 웹브라우저에서 전송받은 request 영역에 name 값이 같은 것을 찾아 값을 읽어옴, 항상 String 형으로 변환
	getAttribute : 이전에 다른 JSP 또는 Servlet 페이지에서 설정한 매개변수 사용
					request.setAttribute에서 설정을 해준 값을 request.getAttribute로 가져옴
					(설정 값이 없다면 Null. Object 반환)
-->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	h2{color:red;}
	span.name{color:orange; font-weight:bold;}
	span.gender{color:yellow; font-weight:bold; background-color:black;}
	span.age{color:green; font-weight:bold;}
	span.city{color:blue; font-weight:bold;}
	span.height{color:navy; font-weight:bold;}
	span.food{color:purple; font-weight:bold;}
</style>
</head>
<body>
	
	<h2>개인취향 테스트 결과(POST)</h2>
	<span class='name'><%= name %></span> 님은   <!-- 표현식 -->
	<span class='age'><%= age %></span>이시며, 
	<span class='city'><%= city %></span>에 사는 
	키 <span class='height'><%= height %></span>cm인 
	<span class='gender'><%= gender %></span>입니다. 
	좋아하는 음식은 <span class='food'><%= food %></span>입니다.
</body>
</html>