/**
 * 
 */

 
 
 window.onload = function(e){
	 /** @type{HTMLTableElement}*/
	 let table = document.querySelector("#table");
	 
	 let hero = new Hero();
	 
	 table.onclick = function(){
		 hero.target.focus();
		 console.log("table click...");e
	}
 }
 
 class Hero{
	 
	 constructor(){
		 /** @type{HTMLTableDataCellElement}*/
		 let target = table.rows[10].cells[20];
		 target.tabIndex = 1;
		 target.style.color='blue';
		 target.style.background = 'white';
		 target.innerText = 'X'
		 this.target = target;
		 
		 this.target.onkeydown = e => this.keydown(e);
	 }
	 /** @param{KeyboardEvent} e */
	 keydown(e){
		 console.log(e.key)
		 switch(e.key){
			 case"ArrowUp":
			 	this.up();
			 break;
			 case"ArrowDown":
			 	this.down()
			 break;
			 case"ArrowLeft":
			 	this.left();
			 break;
			 case"ArrowRight":
			 	this.right();
			 break;
			 
		 }
//		 e.stopPropagation();  //버블링 막는 함수
		if(e.key.startsWith("Arrow"))
		  e.preventDefault();   //디폴트액션을 막는 함수
	 }
	 
	 up(){
		    console.log("up")
		 	let hero=this.target;
		    let prow = hero.parentElement.previousElementSibling;
			if(prow != null){
				let hero_left = hero.previousElementSibling;
				let hero_up = prow.cells[hero.cellIndex];
				let hero_up_left = hero_up.previousElementSibling;
			
				let hero_parent = hero.parentElement;
				let hero_up_parent = hero_up.parentElement;

		        hero_up.remove();
		        hero_up_left.after(hero);
			
		        if(hero_left == null){
			       prow.prepend(hero_up)	    
				   hero_up_parent.prepend(hero);
				}else{	
            	   hero_up_left.after(hero);
				   hero_left.after(hero_up);
               }
                hero.focus();
			}
			
	 }		
		 
  
  
	 down() {
		 console.log("down");
	 }
	 left(){
		 console.log("left")
		 let hero=this.target;
		 let hero_left = hero.previousElementSibling;
		 if(hero_left != null){
		    hero_left.remove()
		    hero.after(hero_left);
	     }
	}
	 
	 right(){
		 console.log("right")
		 let hero=this.target;
		 let hero_right = hero.nextElementSibling;
		 if(hero_right != null){
		 hero_right.remove()
		 hero.before(hero_right);
		 }
	 }
 }