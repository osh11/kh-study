<%-- directive page : 페이지 지시자 태그(페이지에 대한 설정) --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <!-- errorPage="errorPage.jsp" -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sum</title>
</head>
<body>
<%-- JSP 주석 --%>
<!-- HTML 주석 -->

<%--
	<%! %> 필드를 선언하는 태그
--%>

<%-- <%! private int age = 20; %> --%>

<%-- 스크립틀릿 태그 내에는 자바 문법을 작성
	 <% %> scriptlet
--%>
<%
	int total = 0;
	for(int i=1; i <= 10; i++){
		total += i;
	}
	
	String s = null;
	char ch = s.charAt(0);
%>

	<h4>1부터 10까지의 합은 <span style="color:cornflowerblue; font-size:16pt;"><%= total %></span>입니다.</h4>
	<h4>1부터 10까지의 합은 <span style="color:cornflowerblue; font-size:16pt;"><% out.print(total); %></span>입니다.</h4>
</body>
</html>