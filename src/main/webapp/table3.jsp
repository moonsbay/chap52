<%@ page import="util.Color" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table3.jsp</title>
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
<script type="text/javascript">
window.onload = function(){
	let table = document.querySelector("table");
	
	let hero = table.rows[10].cells[20]

	hero.style.color ='red';
	hero.style.removeProperty('background');
	
	hero.innerText = '@';
	hero.tabIndex = '1';
	
	table.onclick = function(){
		hero.focus();
	}
	
	
	hero.onkeydown = function(e){
		
		switch(e.key){
		case 'ArrowUp':{
			console.log("UP...")
			
			let prow = hero.parentElement.previousElementSibling;
			if(prow != null){
//			if(hero.parentElement.previousElementSibling.cells[hero.cellIndex] != null) 이건 아님
			let hero_up = prow.cells[hero.cellIndex];
			let hero_left = hero.previousElementSibling;
			let hero_up_left = hero_up.previousElementSibling;
			
			let hero_parent = hero.parentElement;
			let hero_up_parent = hero_up.parentElement;
//			hero.childElementCount
			
			hero.remove();
		    hero_up.remove();
			
		    if(hero_left == null){
		    	
			     hero_parent.prepend(hero_up)	    
//				 hero.parentElement.prepend(hero_up);
				 hero_up_parent.prepend(hero);
				}

//			if(prow != null){	여기 이프문이 오면 끝에서 에러..와이?
               else{	
            	 hero_up_left.after(hero);
				 hero_left.after(hero_up);
               }
               
            hero.focus();
			}
			
			break;
		}
		case 'ArrowDown':{
			console.log("Down...")
			let nrow = hero.parentElement.nextElementSibling;
			if(nrow != null){
//			if(hero.parentElement.previousElementSibling.cells[hero.cellIndex] != null) 이건 아님
			let hero_down = nrow.cells[hero.cellIndex];
			let hero_left = hero.previousElementSibling;
			let hero_down_left = hero_down.previousElementSibling;
			
			let hero_parent = hero.parentElement;
			let hero_down_parent = hero_down.parentElement;
			
			hero.remove();
		    hero_down.remove();
				
		       if(hero_left == null){
				 hero_parent.prepend(hero_down);  //prepend와의 차이는 확인하자
				 hero_down_parent.prepend(hero);
				
				}

//			if(prow != null){	여기 이프문이 오면 끝에서 에러..와이?
               else{	
            	 hero_down_left.after(hero);
				 hero_left.after(hero_down);
               }
               
               hero.focus();
			}
			
			break;
		}
		
		case 'ArrowLeft':
			let hero_left = hero.previousElementSibling;   //let이 없어도 실행이 된다.. 왜?
			if(hero_left != null){
			hero_left.remove();
			hero.after(hero_left);
			}
			console.log("Left...")
			break;
		case 'ArrowRight':
			let hero_Right = hero.nextElementSibling;   
			if(hero_Right != null){
			hero_Right.remove();
			hero.before(hero_Right);
			}
			console.log("Right...")
			break;
		}
	}
	
}
</script>
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