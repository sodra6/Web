	const $year = $("#year");
	const $month = $("#month");
	const $date = $("#date");

	//년과 월을 생성하는 함수
	function createYearMonth(){
		
		//현재날짜의 객체 생성
		const now = moment();
		
		//월을 생성
		for(let i=1; i<13; i++){
			$("<option>").text(i).appendTo($month);
		}//for() end
		
		//년도를 생성
		for(let i=now.year();	i>=(now.year()-120); i--) {
			$("<option>").text(i).appendTo($year);
		}
		createDate();
	}//createYearMonth() end
	
	//한번만 호출
	createYearMonth();
	
	//유저가 선택한 년도와 월을 가지고 해당하는 날짜를 생성하는 함수
	function createDate() {
		//유저가 선택한 년도
		const year = $year.val();
		//유저가 선택한 월
		const month = $month.val();

		const lastDate = moment([year,month-1]).daysInMonth();
		
		//기존요소들 비우기
		$date.empty();
		
		for(let i =1; i<=lastDate; i++) {
			$("<option>").text(i).appendTo($date);
		}//for end
		
		alert(lastDate);
	}//createDate() end
	
	$year.change(createDate);
	$month.on("change",createDate);