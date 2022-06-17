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
	}
</script>
</head>
<body>

</body>
</html>