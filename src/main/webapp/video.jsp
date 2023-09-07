<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>video.jsp</title>
<script type="text/javascript">
/*window.onload = function(){
	video.play();
}*/
</script>
</head>
<body>
<h1>video 실습</h1>
<hr>
<video src="/media/Wildlife.mp4" width = "100" ></video>
<hr>
<video src="/media/Wildlife.mp4" width = "300" controls="controls"></video>
<hr>
<video id="video"
       src="/media/Wildlife.webm"    
        
       width = "500" 
       controls="controls"
       preload = "auto"
       autoplay="autoplay"
       poster ="http://via.placeholder.com/240x240"></video>
<!--        preload="auto"></video>  -->
<!--        autoplay="autoplay"></video> -->
<!-- autoplay는 현재는 되지 않는다? 윈도우 크롬에서 되는듯한데 preload와 같이 사용하면 되는 가..되다 안되다.. -->



</body>
</html>