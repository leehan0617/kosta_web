/**
 * 
 */

function writeForm(form){
	if(form.name.value==""){
		alert("�̸��� �Է��ϼ���");
		form.name.focus();
		return false;
	}else if(form.kor.value==""){
		alert("���������� �Է��ϼ���.");
		form.kor.focus();
		return false;
	}else if(form.eng.value==""){
		alert("���������� �Է��ϼ���.");
		form.eng.focus();
		return false;
	}else if(form.math.value==""){
		alert("���������� �Է��ϼ���.");
		form.math.focus();
		return false;
	}
	
	var kor=parseInt(form.kor.value);
	var eng=parseInt(form.eng.value);
	var math=parseInt(form.math.value);
	
	if(kor<0 || kor>100 || eng<0 || eng>100 || math<0 || math>100){
		alert("������ 0~100 ������ ���� �Է� �����մϴ�.");
		return false;
	}
}

function readForm(form){
	if(form.bunho.value==""){
		alert("��ȣ�� �Է��ϼ���");
		form.bunho.focus();
		return false;
	}
}

function deleteForm(form){
	if(form.name.value==""){
		alert("�̸��� �Է��ϼ���.");
		form.name.focus();
		return false;
	}
}