<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function formClose() {
		if(${check }) {
			opener.frm.mPassword.focus();
		} else {
			opener.frm.mId.value = null;
			opener.frm.mId.focus();
		}
		window.close();
	}
</script>
</head>
<body>
	<div align="center">
		<h3>${msg }</h3>
		<button type="button" onclick="formClose()">확인</button>
	</div>
</body>
</html>