<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
table td {
 text-align: left;
}

table th {
 text-align: center;
}
</style>
<body>
	<jsp:include page="/view/common/header.jsp"></jsp:include>

	<div id="wrap" align="center">
		<h2>상품 수정 - 관리자 페이지</h2>
		<form method="post" enctype="multipart/form-data" name="frm">
		<input type="hidden" name="code" value="${product.code}">
		<input type="hidden" name="img" value="${product.pictureUrl}">
		<table class="list" style="margin-top: 60px">
			<tr><td><c:choose>
						<c:when test="${empty product.pictureUrl}">
							<img src="/upload/noimage.jpeg">
						</c:when>
						<c:otherwise>
							<img src="/upload/${product.pictureUrl}">					
						</c:otherwise>
					</c:choose></td>
				<td>
					<table>
						<tr><th style="width: 80px">상 품 명</th>
							<td><input type="text" name="name" value="${product.name}" size="80"></td>
						</tr>
						<tr><th>가 격</th>
							<td><input type="text" name="price" value="${product.price}">원</td>
						</tr>
						<tr><th>사 진</th>
							<td><input type="file" name="pictureUrl"><br>
								(주의사항 : 이미지를 변경하고자 할때만 선택하시오.)</td>
						</tr>
						<tr><th>설 명</th>
							<td><textarea cols="90" rows="10" name="description">${product.description}</textarea></td>
						</tr>					
					</table>
				</td>
			</tr>	
		</table>
		<br><input type="submit" value="수정" onclick="return productCheck()">
			<input type="reset" value="다시작성">
			<input type="button" value="목록" onclick="location.href='productList.do'">
		</form>
	</div>
	
	<jsp:include page="/view/common/footer.jsp"></jsp:include>
</body>
</html>
