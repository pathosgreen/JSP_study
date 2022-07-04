document.write("자바스크립트 실행 테스트"); // 작동 테스트용
// 필수 항목 입력 체크
function boardCheck(){
	if(document.frm.name.value.length == 0){
		alert("작성자를 입력하세요.");
		return false;
	}
	if(document.frm.pass.value.length == 0){
		alert("비밀번호를 입력하세요.");
		return false;
	}
	if(document.frm.title.value.length == 0){
		alert("제목를 입력하세요.");
		return false;
	}
	return true;
}
// 새 창에 열기(?)
function open_win(url,name){
	window.open(url,name,"width=500, height=230");
}
// 비밀번호 입력 체크
function passCheck(){
	if(document.frm.pass.value.length == 0){
		alert("비밀번호를 입력하세요.");
		return false;
	}
}