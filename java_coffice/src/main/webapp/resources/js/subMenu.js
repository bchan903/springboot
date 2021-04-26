/**
 * subMenu.js
 */

$(function() {
	 //[전체보기] 클릭했을 때 모든 메뉴 항목 보이게	
	 $('#showAllMenu').on('click', function(){			 
		 if($(this).text()=='전체보기 ▼') {
			 $('.subMenuItem').slideDown(1);
			 $('#subMenuBox').css('visibility', 'visible');
			 $('#subMenuItem').css('visibility', 'visible');
			$(this).text('메뉴닫기 ▲').css('color', 'blue');
		 }else {
			 $('.subMenuItem').slideUp(1);
			 $('#subMenuBox').css('visibility', 'hidden');
			 $(this).text('전체보기 ▼').css('color', 'black');		
		 }
	});
}); //$(function() 끝