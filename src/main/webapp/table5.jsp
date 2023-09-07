<%@ page import="util.Color" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table5.jsp</title>
<style type="text/css">
:focus{
	outline-color: red;
	outline-style: dotted;
	outline-width: 5px;
}
table{
	font-size: 15pt;
	font-family: monospace;
	border-collapse: collapse;
}
</style>
<script type="text/javascript" src="/js/table5.js"></script>
</head>
<body>
<h1>Alpha Cursor Move</h1>
<hr>
<table id="table">
	<tbody>
	<c:forEach var="i" begin="1" end="20">
		<tr>
		<c:forEach var="j" begin="1" end="40">
			<jsp:useBean id="alpha" class="util.Alpha"/>
			<jsp:setProperty name= "alpha" property="fg" value="${Color.Black}"/>
			<jsp:setProperty name= "alpha" property="bg" value="${Color.Black}"/>
			<td style="color:${alpha.fg}; background:${alpha.bg};">${alpha.ch}</td>
			<c:remove var="alpha"/>	
		</c:forEach>
		</tr>
	
	</c:forEach>
	
	</tbody>


</table>
<button>Start</button>
</body>
</html>