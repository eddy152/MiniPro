<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입홈</title>
<script type="text/javascript">
	function frmCheck(){
		
		if(frm.mPassword.value != frm.mPassword1.value) {
			alert("패스워드가 일치하지 않습니다.");
			frm.mPassword.value = null;
			frm.mPassword1.value = null;
			frm.mPassword.focus();
			return false;
		}
		
		return true;
	}
	
	function idCheck(str) {
		var url = "idCheck.do?mId="+str;
		if(str == ""){
			alert("아이디를 입력하세요.")
		}
		window.open(url,"아이디중복체크", "width=400,height=200,top=100,left=100");
	}
</script>
</head>
<jsp:include page="../common/menu.jsp"></jsp:include>
<body>
<div align="center">
	<h1>회원가입</h1>
	<form action="memberJoin.do" id="frm" name="frm" onsubmit="frmCheck()" method="post">
		<div>
			<table border="1">
				<tr>
					<th width="120">아이디</th>
					<td>
						<input type="text" id="mId" name="mId" size="30" style="border: none;" required="required">
						<button type="button" onclick="idCheck(mId.value)">중복체크</button>
					</td>
				</tr>
				<tr>
					<th width="120">password</th>
					<td><input type="password" id="mPassword" name="mPassword" size="30" style="border: none;" required="required"></td>
				</tr>
				<tr>
					<th width="120">password 확인</th>
					<td><input type="password" id="mPassword1" name="mPassword1" size="30" style="border: none;" required="required"></td>
				</tr>
				<tr>
					<th width="120">이 름</th>
					<td ><input type="text" id="mName" name="mName" size="30" style="border: none;" required="required"></td>
				</tr>
			</table>
		</div><br/>
			<input type="submit" value="회원가입">&nbsp; 
			<input type="reset" value="취소">
	</form>
</div>
</body>
</html>