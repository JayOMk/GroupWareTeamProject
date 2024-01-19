<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/login.css">
	<script type="text/javascript" src="script.js"></script>
</head>
<style>
     @import url('https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Noto+Sans+KR&display=swap');
    .container{
        width: 30%;
        height: 50%;
        margin-top : 8%;
    }
    body {
        font-family: 'Noto Sans KR', sans-serif;
    }
</style>
<body>
	<table border="1" align="center">
		<form name="reg_frm" method="post" action="registerOk.jsp">
			<tr height="50">
				<td colspan="2" align="center">
					<h1>회원 가입 신청</h1>
					'*' 표시 항목은 필수 입력 항목입니다.
				</td>
			</tr>
			<tr height="30">
				<td width="80">User ID</td>
				<td>
					<input type="text" name="#" size="20">*
				</td>
			</tr>
			<tr height="30">
				<td width="80">암호</td>
				<td>
					<input type="password" name="#" size="20">*
				</td>
			</tr>
			<tr height="30">
				<td width="80">암호 확인</td>
				<td>
					<input type="password" name="#" size="20">*
				</td>
			</tr>
			<tr height="30">
				<td width="80">이      름</td>
				<td>
					<input type="text" name="#" size="20">*
				</td>
			</tr>
			<tr height="30">
				<td width="80">E-mail</td>
				<td>
					<input type="text" name="#" size="30">*
				</td>
			</tr>
			<tr height="30">
				<td width="80">주      소</td>
				<td>
					<input type="text" name="#" size="40">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="등록" onclick="#()">
					<input type="reset" value="다시입력">
					<input type="button" value="가입안함">
				</td>
			</tr>
		</form>
	</table>
</body>
</html>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                // document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}

</script>
















