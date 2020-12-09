<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
</head>
<body>
	<h2>오늘의 메뉴 <%@ include file = "today.jsp" %> </h2>
	<form action="<%= request.getContextPath() %>/menuOrder.do" method="get">
		<select id="menu" name="menu">
			<option value="햄버거">햄버거</option>
			<option value="감자튀김">감자튀김</option>
			<option value="치킨">치킨</option>
			<option value="피자">피자</option>
		</select>
		<input type="submit" value="선택완료">
	</form>
</body>
</html>