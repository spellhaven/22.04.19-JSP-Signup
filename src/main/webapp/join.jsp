<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<script type = "text/javascript" src = "js/members.js"></script>


</head>
<body>
	<form action = "joinOk.jsp" method = "post" name = "reg_frm">
	<!-- 인싸가 상하이 스파이시 치킨 콤보 말고 상스치콤 달라고 하는 것처럼. Registration Form 말고 reg_frm 주세요. ㅋ.-->
	
	아이디: <input type = "text" name = "id" size = "20"> <br><br>
	비밀번호: <input type = "password" name = "pw" size= "20"> <br><br>
	비밀번호 확인: <input type = "password" name = "pw_check" size= "20"> <br><br>
	
	이름: <input type = "text" name = "name" size = "20"> <br><br>
	이메일: <input type = "email" name = "email" size = "20"> <br><br>
	주소: <input type = "text" name = "address" size = "50"> <br><br>
	
	<input type = "button" value = "회원가입" onclick = "infoConfirm()">
	<!-- 꼭 input type = "submit"으로 안 하고, 버튼을 만든 다음 onclick에서 JS 함수를 써도 된다.
	무지성 form submit 현상을 막을 수 있다.-->
	
	<input type = "reset" value = "취소" onclick="">

	
	
	</form>



</body>
</html>