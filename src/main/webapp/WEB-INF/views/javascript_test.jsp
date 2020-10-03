<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JAVASCRIPT</title>
</head>
<body>
	<label>연도</label>
	<select class="yearSelector"></select>
	<label>달</label>
	<select class="monthSelector"></select>
	
	<button class="calendarButton">입력</button>
	<input type="date">
	<input type="month">
	<input type="week">
	
	<script>
		//쿼리 가져오는 문구
		var yearSelector = document.querySelector('.yearSelector');
		var monthSelector = document.querySelector('monthSelector');
		
		var monthNames=['January','Feburary','March','April','May','June','July','August','September','October','November','December'];
		
		//옵션
		for(var i=2011; i<=2020; i++){
			var option = document.createElement('option');
			option.value=i;
			option.innerHTML = i;
			yearSelector.appendChild(option);
		}
		for(var i=0; i<12; i++){
			var option = document.createElement('option');
			option.value=i;
			option.innerHTML = monthNames[i];
			monthSelectoi.appendChild(option);
		}
		
		//create 버튼 액션
		var btn= document.querySelector('.calendarButton');
		
		btn.onclick = function(){
			var tbl = document.querySelector('table');
			if(tbl){
				tbl.parentNode.removeChild(tbl);
			}
			
			//정보 가져오기
			var yearSelector = document.querySelector('yearSelector');
			var monthSelector = document.querySelector('monthSelector');
			var monthNames=['January','Feburary','March','April','May','June','July','August','September','October','November','December'];
			
			var selectedYear = yearSelector.value;
			var selectedMonth = monthSelector.value;
			var firstDateText = selectedYear + '-' + (Number(selectedMonth)+1) + '-' +1;
			var firstDateObj = new Date(firstDateText);
			var firstWeekDay = firstDateObj.getDay();
			var daysInMonth;
			var testMonth = Number(selectedMonth)+1;
		}
	</script>
</body>
</html>