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
<hr>
<form action="alpha4.jsp">
  <fieldset>
    <legend>Position</legend>
    <label for="line">line</label>
    <input id="line" type="number" name="line" value="${param.line }" min="1" max="20">
    <label for="column">column</label>
    <input id="column" type="number" name="column" value="${param.column }" min="1" max="40">
    </fieldset>
  <fieldset>
    <legend>Character</legend>
    <c:forEach var = "i" begin="0" end="25">
        <c:set var = "ch" value="<%=\"\" + (char)('A'+ (Integer)(pageContext.getAttribute(\"i\"))) %>"/>
     	<label for="${ch}">${ch}</label>
     	<c:choose>
     	<c:when test="${param.ch == ch}">
     	  <input id="${ch}" type="radio" name="ch" value="${ch}" checked="checked">
     	</c:when>
     	
     	<c:otherwise>
          <input id="${ch}" type="radio" name="ch" value="${ch}">
        </c:otherwise>
        </c:choose>
    </c:forEach>
    
    
  </fieldset>
  <fieldset>
    <legend>Color</legend>
    <label for="fg">fg</label>
    <select id="fg" name="fg">
      <c:forEach var="color" items="${Color.values()}"> 
       <c:choose>
       <c:when test="${param.fg eq color }">
        <option value="${color}" selected="selected">${color}</option>
       </c:when>
       <c:otherwise>
        <option value="${color}">${color}</option>
       </c:otherwise> 
       </c:choose>
      </c:forEach>
    </select>
    <label for="bg">bg</label>
    <select id="bg" name="bg">
      <c:forEach var="color" items="${Color.values()}"> 
        <c:choose>
         <c:when test="${param.bg eq color }">
          <option value="${color}" selected="selected">${color}</option>
         </c:when>
         <c:otherwise>
          <option value="${color}">${color}</option>
         </c:otherwise> 
       </c:choose>
      </c:forEach>
    </select>
  </fieldset>
  <input type="submit" value="생성">
  


</form>
<hr>
<table id="surface">
	<tbody>
	<c:forEach var="i" begin="1" end="20">
		<tr>
		<c:forEach var="j" begin="1" end="40">
			<jsp:useBean id="alpha" class="util.Alpha"/>
			<c:choose>
			<c:when test="${param.line eq i && param.column eq j }">
			  <td style="color:${param.fg}; background:${param.bg};">${param.ch}</td>
			</c:when>
			<c:otherwise>
			  <td style="color:black; background:black;">${alpha.ch}</td>
			</c:otherwise>
			
			</c:choose>
			
			
			<c:remove var="alpha"/>	
		</c:forEach>
		</tr>
	</c:forEach>
	
	</tbody>


</table>

<hr>

</body>
</html>