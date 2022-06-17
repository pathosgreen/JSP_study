<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function checkLength(obj, length, nextObj) {
		if(obj.value.length==length){
			var next = document.getElementById(nextObj);
			next.focus() ;
		}
	}
	function checkForm(obj) {
		var j1 = obj.j1.value;
		if(j1.length!=6){
			alert("주민번호 앞자리는 6자리여야 합니다.");
			obj.j1.value = "";
			obj.j1.focus();
			return false;
		}
		for(i=0;i<j1.length;i++){
			if(j1.charAt(i)<'0' || j1.charAt(i)>'9'){
				alert("주민번호 앞자리는 반드시 숫자 이어야 합니다.");
				obj.j1.value = "";
				obj.j1.focus();
				return false;
			}
		}
		var j2 = obj.j2.value;
		if(j2.length !=7){
			alert("주민번호 뒷자리는 7자리여야 합니다.");
			obj.j1.value = "";
			obj.j1.focus();
			return false;
		}
		for(i=0;i<j1.length;i++){
			if(j2.charAt(i)<'0' || j2.charAt(i)>'9'){
				alert("주민번호 뒷자리는 반드시 숫자 이어야 합니다.");
				obj.j1.value = "";
				obj.j1.focus();
				return false;
			}
		}
		return true;
	}
</script>
</head>
<body>
	<form action="result4.jsp" method="post" onsubmit="return checkForm(this)">
		주민번호 : 
		<input type="text" maxlength="6" size="10" name="j1" id="j1" onkeyup="checkLength(this,6,'j2')">
		-
		<input type="password" maxlength="7" size="10" name="j2" id="j2" onkeyup="checkLength(this,7,'submitBtn')">
		<input type="submit" value="주민번호 유효성 검사하기" id="submitBtn">
	</form>
</body>
</html>