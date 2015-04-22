/**
 * 
 */

function writeForm(form){
	if(form.name.value==""){
		alert("이름을 입력하세요");
		form.name.focus();
		return false;
	}else if(form.kor.value==""){
		alert("국어점수를 입력하세요.");
		form.kor.focus();
		return false;
	}else if(form.eng.value==""){
		alert("영어점수를 입력하세요.");
		form.eng.focus();
		return false;
	}else if(form.math.value==""){
		alert("수학점수를 입력하세요.");
		form.math.focus();
		return false;
	}
	
	var kor=parseInt(form.kor.value);
	var eng=parseInt(form.eng.value);
	var math=parseInt(form.math.value);
	
	if(kor<0 || kor>100 || eng<0 || eng>100 || math<0 || math>100){
		alert("점수는 0~100 사이의 수만 입력 가능합니다.");
		return false;
	}
}

function readForm(form){
	if(form.bunho.value==""){
		alert("번호를 입력하세요");
		form.bunho.focus();
		return false;
	}
}

function deleteForm(form){
	if(form.name.value==""){
		alert("이름을 입력하세요.");
		form.name.focus();
		return false;
	}
}