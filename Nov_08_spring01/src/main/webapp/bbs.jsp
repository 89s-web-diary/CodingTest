<%@page import="java.util.List"%>
<%@page import="com.multi.mvc01.BbsDTO"%>
<%@page import="com.multi.mvc01.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/project.css">
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
			<% if (session.getAttribute("id") != null) { %>
			<br>
			<span class="alert alert-success"><%=session.getAttribute("id")%>님 환영합니다.</span>
			<a href="insert.jsp"><button class="btn btn-danger">글쓰기</button></a>
			<a href="logout.jsp"><button class="btn btn-outline-danger">로그아웃</button></a><br><br>
			<% } %>
			<%
				BbsDAO dao = new BbsDAO();
				List<BbsDTO> list = dao.list();
			%>
			<table border="1" class="table table-hover">
				<thead>
					<tr class="table-warning">
						<td>게시글</td>
						<td>내용</td>
						<td>작성자</td>
					</tr>
				</thead>
				<tbody>
				<% for(BbsDTO bag : list){ %>
					<tr class="table-info">
						<td><a href="bbs2.jsp?id=<%=bag.getId()%>"><%=bag.getTitle()%></a></td>
						<td><%=bag.getContent()%></td>
						<td><%=bag.getWriter()%></td>
					</tr>
				<% } %>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>