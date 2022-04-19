<%@page import="com.github.spellhaven.ex.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="dto" class ="com.github.spellhaven.ex.MemberDto"></jsp:useBean>
<!-- ID를 여기서 내 마음대로 짓는 거였지 참. 여튼 dto라고 마음대로 지었다. -->
  
<jsp:setProperty property="*" name="dto"/>
<!-- jsp: setProperty 너. 누구야. 여튼 property = "*"라고만 쓰면 setter를 이용해서
id, pw, name, address... 맞는 이름대로 알아서 넣어 준다고 하데. 와 신기헤~~~! -->   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 성공 페이지.</title>
</head>
<body>

	<!-- joinOk => DTO => DAO로 자료가 가는 걸 잘 봐라.
	
	간지나게 JS로 경고창 띄우려고 하니, 스크립틀릿 쪼개기 오진다.
	자바 시작해 자바 끝내 자바 시작해 자바 끝내 중괄호 열어 중괄호 닫아 중괄호 다시 닫아...
	
	희소식) Spring에선 이렇게 만들지 않는다고 한다. "다행이다" -->


	<% 
		MemberDao dao = new MemberDao();

		int idResult = dao.confirmId(dto.getId()); // 1 = 이 아이디가 기존 가입자와 중복됨. 0 = 이 아이디는 가입가능.

		
		if(idResult == 1) {
	%>
			<script type = "text/javascript">
				alert("이미 존재하는 아이디임. 다른 아이디로 가입해 주세요.");
			</script>
		
			
		
	<% 	
		} else {
			
			int dbResult = dao.insertMember(dto); // DB 저장 성공이면 1, 아니면 0을 반환
			
			if (dbResult == 1) {
	%>		
			<script type = "text/javascript">
				alert("회원가입성공! 가입을 축하드립니다.");
			</script>
			
	<%		
			} else {
	%>	
		
			<!-- 왜 나는 Primary Key인 아이디가 겹쳐도 교수님처럼 실패 안 뜨고 회원가입성공!이라고만 뜰까? 
			(web_members SQL 테이블에 새롭게 등록되진 않음.-->	
			
			<!-- 바로 위 문제 고친 것 같다. MemberDao.java 끝에 return dbFlag; 아니고 return 1;로 되어 있었음.
			정말 한 단어 틀렸다고 결과 완전히 달라지는 거 무사와요. 무사. 와요 -->
			
			<script type = "text/javascript">
				alert("회원가입실패! 킹받네");
			</script>	
	
	<%
			} // 중괄호 하나만 띡! 있는 거 킹받네
		
		} // 그래서 confirmID()를 위한 중괄호를 하나 더 만들어 드렸습니다. ㅅ오ㅅ
		
	%>
	
	
	
	
	
	
	
	


</body>
</html>