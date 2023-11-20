<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>banana.jsp</title>
</head>
<body>
	<table id="friutTable">
		<tr>
			<td class="fruitTitleTd" align="right">${r }<a href="#">등록</a>		
			</td>
		</tr>
		<tr>
			<td align="center">
			<!-- DB에 저장된 데이터 나올 곳 -->
				<table id = "friutContext" border="1">
					<tr class="dataTr">
						<th class="friutMainTr">지역</th>
						<th class="friutMainTr">가격</th>
						<th class="friutMainTr">맛</th>
						<th class="friutMainTr">소개</th>
						
					</tr>
					<c:forEach var="banana" items="${bananas }">
					<tr class="dataTr">
						<td align="center">${banana.b_location }</td>
						<td align="center"><fmt:formatNumber value="${banana.b_price }" type="currency"/></td>
						<td>${banana.b_flavor }</td>
						<td>${banana.b_introduce }</td>
					</tr>
					
					</c:forEach>
				</table>		
			</td>
		</tr>
		<tr>
			<td><a href="#">1</a><a href="#">2</a><a href="#">3</a></td>
		</tr>
		<tr>
			<td align="center">검색</td>
		</tr>
	</table>


</body>
</html>