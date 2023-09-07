<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>alpha.jsp</title>
<style type="text/css">
:focus{
	outline-color: red;
	outline-style: dotted;
}
talbe{
	font-size: 15pt;
	font-family: monospace;
}
</style>

</head>
<body>
<h1>Alpha Generator</h1>
<hr>
<c:catch var="e">

<%-- <% String line = request.getParameter("line"); %> --%>
<%-- line =<%="["+line+"]" %> --%>
<table id="table">
	<tbody>
	<c:forEach var="i" begin="1" end="${param.line==null||param.line=='' ? 1:param.line}">
		<tr>
		<c:forEach var="j" begin="1" end="${param.column ==null||param.column=='' ? 1:param.column}">
			<jsp:useBean id="alpha" class="util.Alpha"/>
			<td style="color:${alpha.fg}; background:${alpha.bg};">${alpha.ch}</td>
			<c:remove var="alpha"/>	
		</c:forEach>
		</tr>
	
	</c:forEach>
	
	</tbody>


</table>
</c:catch>
<hr>
<c:if test="${e!=nell}">
  에러입니다.<br>
  line, column은 0이상의 양수여야 합니다<br>
  line = ${param.line }<br>
  column = ${param.column }<br>
<%--   ${e.message}<br> --%>
<%--   ${e}<br> --%>
</c:if>
<hr>
<button>Start</button>
</body>
</html>