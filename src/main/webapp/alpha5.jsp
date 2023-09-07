<%@page import="util.Color"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>alpha4.jsp</title>
<style type="text/css">
:focus{
	outline-color: red;
	outline-style: dotted;
}
table{ 
 	font-size: 15pt; 
 	font-family: monospace; 
 	border-collapse: collapse; 
 } 
</style>


</head>

<body>
<h1>Alpha Generator</h1>
<form action="alpha5.jsp" >
<fieldset>
<legend>Position입력창(line & column)</legend>
 <label>line</label>
 <input id="line" type="text" name="line" value="${param.line}" min="1" max="20">
 <label>column</label>
 <input id="column" type="text" name="column" value="${param.column}" min="1" max="40">

</fieldset>
<fieldset>
<legend>Color입력창(fg & bg)</legend>
 <label>fg</label>
  <select>
   <option>
    <c:forEach>
     
    </c:forEach>
   </option>
   
   
  </select>
</fieldset>


<input type="submit">
</form>
<hr>
<table id="surface">
	<tbody>
	<c:forEach var="i" begin="1" end="20">
		<tr>
		<c:forEach var="j" begin="1" end="40">
			<jsp:useBean id="alpha" class="util.Alpha"/>
			  <td style="color:black; background:black;">${alpha.ch}</td>
			<c:remove var="alpha"/>	
		</c:forEach>
		</tr>
	</c:forEach>
	</tbody>
</table>
<hr>
</body>
</html>