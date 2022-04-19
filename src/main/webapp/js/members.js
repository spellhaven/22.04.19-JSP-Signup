/**
 * 
 */
 
function infoConfirm() {
	
	if(document.reg_frm.id.value.length == 0) {
		alert("아이디는 필수 입력 사항입니다. ㅋ")
		reg_frm.id.focus();
		return;
	}
	
	if(document.reg_frm.id.value.length < 2) {
		alert("아짧(아이디가 너무 짧다. 2글자 이상이어야 한다는 뜻)")
		reg_frm.id.focus();
		return;
	}
	
	if(document.reg_frm.pw.value.length == 0) {
		alert("비밀번호는 필수 입력 사항입니다. ㅋ")
		reg_frm.pw.focus();
		return;
	}
	
	if(document.reg_frm.pw.value != document.reg_frm.pw_check.value) {
		alert("비밀번호 확인이 비밀번호와 일치하지 않습니다 ㅋ")
		reg_frm.pw_check.focus();
		return;
	}
	
	
	if(document.reg_frm.name.value.length == 0) {
		alert("이름은 필수 입력 사항입니다. ㅋ")
		reg_frm.name.focus();
		return;
	}
	
	if(document.reg_frm.email.value.length == 0) {
		alert("이메일은 필수 입력 사항입니다. ㅋ")
		reg_frm.email.focus();
		return;
	}

	document.reg_frm.submit();
	
}