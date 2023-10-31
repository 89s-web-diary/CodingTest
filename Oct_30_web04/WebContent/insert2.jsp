<%@page import="bin.BbsDTO"%>
<%@page import="bin.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="bag" class="bin.BbsDTO"></jsp:useBean>
<jsp:setProperty property="*" name="bag"/>
<%
	BbsDAO dao = new BbsDAO();
	int result = dao.insert(bag);
	String res = "";
	if(result==1){
		res = "작성완료";
	}else res = "작성실패";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/project.css" rel="stylesheet">
<!-- Latest compiled and minified CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div id="total">
		<div id="top">
			<jsp:include page="top.jsp"></jsp:include>
			<!-- 액션태그 -->
		</div>
		<div id="top2">
			<jsp:include page="top2.jsp"></jsp:include>
		</div>
		<div id="center">
			<br>
			<span class="badge bg-secondary"><%=res%></span>
			<a href="bbs.jsp"><button class="btn btn-info">돌아가기</button></a>
		</div>
	</div>
</body>
</html>