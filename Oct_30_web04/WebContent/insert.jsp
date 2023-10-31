<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<br>
		<div id="center">
			<% if (session.getAttribute("id") != null) { %>
			<%=session.getAttribute("id")%>님 환영합니다.
			<% } %>
		<br>
			<hr color="blue">
			<form action="insert2.jsp">
				<table border="1" class="table table-hover">
					<tr class="table-warning">
						<td width="200">제목</td>
						<td width="300"><input name="title"></td>
					</tr>
					<tr class="table-warning">
						<td width="200">내용</td>
						<td width="300"><input name="content"></td>
					</tr>
					<tr class="table-warning">
						<td width="200">작성자</td>
						<td width="300"><input name="writer" value="${id}"></td>
					</tr>
					<tr class="table-warning">
						<td width="200" colspan="2">
						<button class="btn btn-info" type="submit">글쓰기</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>