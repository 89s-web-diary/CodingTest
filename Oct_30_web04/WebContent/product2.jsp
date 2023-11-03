<%@page import="bin.ProductDTO"%>
<%@page import="bin.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="bag" class="bin.ProductDTO"></jsp:useBean>
<jsp:setProperty property="id" name="bag" />
<%
	ProductDAO dao = new ProductDAO();
	ProductDTO bag2 = dao.one(bag);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/project.css" rel="stylesheet">
<style>
span {
	font-size: 18px;
}
</style>
<!-- Latest compiled and minified CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="js/jquery-3.7.1.js"></script>
<script type="text/javascript">
	$(function() {	// body태그에 있는 부분을 먼저 읽어서 구조를 ram에 미리 저장
		$('#basket').click(function() {
			$.ajax({
				url : "basket.jsp",
				data : {
					id : '<%= bag2.getId()%>',
					price :'<%=bag2.getPrice()%>',
					title : '<%=bag2.getTitle()%>'
				},
				success : function() {
					alert('장바구니에 추가되었습니다')
					let go = confirm('장바구니로 이동하시겠습니까?')	// confirm은 true, false로 값이 들어옴
					if(go){
						location.href = "basket.jsp"
					}
				}
			})
		})
	})
</script>
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
			<button class="btn btn-success">상품상세정보</button>
			<br>
			<table border=1 class="table table-primary">
					<tr>
						<td rowspan="5"><img alt="none" src="img/<%=bag2.getImg()%>"></td>
						<td><span class="badge bg-danger">상품아이디 : <%=bag2.getId()%></span></td>
					</tr>
					<tr>
						<td><span class="badge bg-danger">상품명 : <%=bag2.getTitle()%></span></td>
					</tr>
					<tr>
						<td><span class="badge bg-success">상품설명 : <%=bag2.getContent()%></span></td>
					</tr>
					<tr>
						<td><span class="badge bg-success">상품가격 : <%=bag2.getPrice()%></span></td>
					</tr>
					<tr>
						<td><span class="badge bg-success">상품회사 : <%=bag2.getCompany()%></span></td>
					</tr>
			</table>
				<button class="btn btn-primary" id="basket">장바구니</button>
				<button class="btn btn-primary">주문하기</button>
		</div>
	</div>
</body>
</html>