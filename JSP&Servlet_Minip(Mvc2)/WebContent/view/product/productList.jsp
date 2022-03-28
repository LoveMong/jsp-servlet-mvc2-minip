<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
table td {
 text-align: center;
}
</style>
<body>
	<jsp:include page="/view/common/header.jsp"></jsp:include>

	<div id="wrap" align="center">
		<h2>상품 리스트 - 관리자 페이지</h2>
		<div colspan="5" style="border: white; text-align: right; margin-bottom: 10px; margin-right: 5px">
				<a href="/product/register.do">상품 등록</a>			
		</div>
		<table class="list">
			<tr style="text-align: center; font-size: 12px ">
				<th>번호</th>
				<th>이름</th>
				<th>가격</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
			<c:forEach var="product" items="${productList}">
				<tr class="record">
					<td>${product.code}</td>				
					<td>${product.name}</td>				
					<td><fmt:formatNumber value="${product.price}" pattern="#,###"/>
					<td><a href="/product/update.do?code=${product.code}">상품 수정</a></td>				
					<td><a href="productDelete.do?code=${product.code}">상품 삭제</a></td>				
				</tr>			
			</c:forEach>		
		</table>
	</div>
	
	<jsp:include page="/view/common/footer.jsp"></jsp:include>
</body>
</html>
