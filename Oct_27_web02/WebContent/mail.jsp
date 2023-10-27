<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 뉴스 댓글을 쓸 때 로그인했을 때와 로그인하지 않았을 때의 화면이 다름
	// 로그인 했을 때와 하지 않았을 때 판단 ==> 세션에 id가 저장되어있는지 확인해서 판단
	if(session.getAttribute("id")==null){
		// 로그인X => id라고 저장된 세션에 값이 존재X
		out.print("로그인이 필요한 기능입니다<br>");
		out.print("<input name=id>");
	}else{
		// 로그인O => id라고 저장된 세션에 값이 존재O
		out.print(session.getAttribute("id")+"님이 로그인 중입니다.");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
메일화면입니다. 100통의 메일이 도착했습니다.
</body>
</html>