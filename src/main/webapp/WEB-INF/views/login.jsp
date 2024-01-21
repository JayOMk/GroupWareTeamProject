<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>

    <title>Document</title>
    <link rel="stylesheet" href="resources/css/bootstrap.css">
    <link rel="stylesheet" href="resources/css/login.css">
<title>Insert title here</title>
<style>
     @import url('https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Noto+Sans+KR&display=swap');
     body {
        font-family: 'Noto Sans KR', sans-serif;
    }
</style>
</head>
<body class="text-center">
    
    <!--  html 전체 영역을 지정하는 container -->
    <div id="container">
      <!--  login 폼 영역을 : loginBox -->
      <div id="loginBox">
     
        <!-- 로그인 페이지 타이틀 -->
        <div id="loginBoxTitle">AssemWork</div>
        <!-- 아이디, 비번, 버튼 박스 -->
        <div id="inputBox">
          <div class="input-form-box"><span>아이디 </span><input type="text" name="#" class="form-control"></div>
          <div class="input-form-box"><span>비밀번호 </span><input type="password" name="#" class="form-control"></div>
          <div class="button-login-box" >
            <button type="button" class="btn btn-outline-secondary" style="width:100%; margin-bottom: 5px;">로그인</button>
            <button type="button" class="btn btn-outline-secondary" style="width:48%; margin-bottom: 5px;">PW찾기</button>
            <button type="button" class="btn btn-outline-secondary" style="width:48%; margin-bottom: 5px;">회원가입</button>
          </div>
        </div>
        
      </div>
    </div>

    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
  </body>
</html>