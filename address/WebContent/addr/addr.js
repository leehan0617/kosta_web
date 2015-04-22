/**
 * 
 */

function insertForm(form){
	if(form.name.value==""){
		alert("이름을 입력해주세요.");
		form.name.focus();
		return false;
	}else if(form.phone.value==""){
		alert("전화번호를 입력해주세요.");
		form.phone.focus();
		return false;
	}else if(form.email.value==""){
		alert("이메일을 입력해주세요.");
		form.email.focus();
		return false;
	}
}

function selectForm(form){
	//alert("ok");
}

function deleteCheck(form){
	if(form.name.value==""){
		alert("이름을 입력하세요");
		form.name.focus();
		return false;
	}
	
	var urlName="deleteOk.jsp?name=" + form.name.value;
	
	var value=confirm("정말로 삭제 하시겠습니까?");
	
	if(value){
		location.href=urlName;
	}else{
		alert("삭제되지않았습니다.");
	}
}