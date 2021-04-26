/**
 * searchZip.js
 */
 
$(function() {
	$('#searchZip').click(function() {
		new daum.Postcode({
			oncomplete: function(data) {
				//팝업 창에서 검색 결과 항목을 클릭했을 때 실행할 코드 작성
				var address1 = '';
				//법정명과 건물명 : (~동, ~건물) (~동, ~아파트)
				var dong_building = '';

				//도로명 주소인 경우
				if (data.userSelectedType == 'R') {
					/* address1 = data.roadAddress;
					
					//법정명이 있으면 추가
					if(data.bname != ''){
						dong_building += data.bname;		
					}
					
					//건물명이 있으면 추가
					if(data.buildingName != ''){
						dong_building += (dong_building != '' ? ', ' + 
						data.buildingName : data.buildingName);				        		
					}
					
					//법정명과 건물명이 있으면 괄호 추가
					address1 += (dong_building != '' ? ' ('+ dong_building + ')' : ''); */

					address1 = data.roadAddress + " (" + data.bname + ", " + data.buildingName + ")";

				} else { //지번 주소인 경우
					address1 = data.jibunAddress;
				}

				document.getElementById('zipcode').value = data.zonecode;
				document.getElementById('address1').value = address1;
				//상세주소 입력하도록 출력된 값 삭제하고 포커스 주기
				var address2 = document.getElementById('address2');
				address2.value = '';
				address2.focus();
			}
		}).open();
	});
});