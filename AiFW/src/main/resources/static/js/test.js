$(function(){				
	
	$('#login_btn').on('click', function(){ 
		
		$.ajax({
			
			url:"login",
			method:"post",
			data:{"id":$('#id').val(),"pw":$('#pw').val()},
			
			success:function(data,textStatus){
				alert("Data: "+ data + "\n" + "Status: " + textStatus);
			},
			error:function(result,textStatus){

			},
			complete:function(result,textStatus){
				
			}
			
		});
						
	});		
});
