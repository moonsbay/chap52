<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>textarea.jsp</title>
</head>
<body>
<h1>TextArea 실습</h1>
<form action="textarea.jsp">
	<fieldset>
		<legend>title</legend>
		<input type="text" name="title">
	</fieldset>
	<fieldset>
		<legend>article</legend>
		<textarea rows="10" cols="30" name="article"></textarea>
	</fieldset>
	<select name="lang">
		<option value="java">java</option>
		<option value="C++">C++</option>
		<option value="python">Python</option>
		<option value="html">HTML5</option>
	</select>
	<hr>
	<select name="lang2" multiple="multiple">
		<option value="java">java</option>
		<option value="C++">C++</option>
		<option value="python">Python</option>
		<option value="html">HTML5</option>
	</select>
	<input type="submit">
</form>
<hr>
<h3>title = ${param.title}</h3>
<div>${param.article}</div>
<hr>
<pre>${param.article}</pre>
<hr>
<div>lang=${param.lang}</div>
<pre>
     lang2[0] = ${paramValues.lang2[0]}
lang2[1] = ${paramValues.lang2[1]}
     lang2[2] = ${paramValues.lang2[2]}
     lang2[3] = ${paramValues.lang2[3]}
</pre>
</body>
</html>