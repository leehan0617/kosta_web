/**
 * 
 */

function insertForm(form){
	if(form.name.value==""){
		alert("�̸��� �Է����ּ���.");
		form.name.focus();
		return false;
	}else if(form.phone.value==""){
		alert("��ȭ��ȣ�� �Է����ּ���.");
		form.phone.focus();
		return false;
	}else if(form.email.value==""){
		alert("�̸����� �Է����ּ���.");
		form.email.focus();
		return false;
	}
}

function selectForm(form){
	//alert("ok");
}

function deleteCheck(form){
	if(form.name.value==""){
		alert("�̸��� �Է��ϼ���");
		form.name.focus();
		return false;
	}
	
	var urlName="deleteOk.jsp?name=" + form.name.value;
	
	var value=confirm("������ ���� �Ͻðڽ��ϱ�?");
	
	if(value){
		location.href=urlName;
	}else{
		alert("���������ʾҽ��ϴ�.");
	}
}