<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main</title>
    <link rel="stylesheet" href="resources/css/bootstrap.css">
    <link rel="stylesheet" href="resources/css/login.css">
    <script src="resources/js/jquery.js"></script>

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Noto+Sans+KR&display=swap');
    body {
       font-family: 'Noto Sans KR', sans-serif;
  margin: 0;
  
}
main {
margin-left: 250px; /* nav�� �ʺ�ŭ main�� ���������� �̵� */
        padding: 1px 16px;
        height: 1000px;
}
nav .profile{
    background-color: #f1f1f1;
    height: 20%;
    
    padding: 20px;
}
.profile img {
        width: 100px;
        height: 100px;
        border-radius: 50%;
        cursor: pointer; /* Ŭ�� ������ ��ҷ� ���� */
    }

nav {
    margin: 0;
        padding-top: 10px; /* nav ��ܿ� ���� �߰� */
        width: 250px;
        background-color: #f1f1f1;
        position: fixed;
        height: 100%;
        overflow: auto;
}
nav ul{
    list-style-type: none;
    margin: 0;
  padding: 0;
}

li a {
  display: block;
  color: #000;
  padding:20px 16px;
  text-decoration: none;
}

li a.active {
  background-color: #eee;
  color: #555;
}

li a:hover:not(.active) {
  background-color: #555;
  color: white;
}
.profile{
 text-align: center; /* �ؽ�Ʈ ������ ����� ���� */
    background-color: #f1f1f1;
        height: 20%;
        padding: 20px;
}
.user-info {
        text-align: center; /* �ؽ�Ʈ ������ ����� ���� */
        margin-top: 10px; /* �̹����� �ؽ�Ʈ ������ ���� ���� */
    }
    .profile img {
        width: 80px; /* ������ �̹����� �ʺ� ���� */
        height: 80px; /* ������ �̹����� ���� ���� */
        border-radius: 50%; /* �̹����� �� ������� ����� ���� ���� ������� �߶���ϴ�. */
    }
    nav li ul {
        display: none;
    font-size: 14px; /* ����޴��� ��Ʈ ũ�� ���� */
    padding: 10px; /* ����޴��� �е� ���� */
    max-height: 200px;
    }
   
</style>
<body>
    <!-- <nav>~</nav> ���� ������ ���� Nav�� -->
    <nav>
    <div class="profile">
        <div class="profile-img">
        
        </div>
            <div class="user-info">
                <p><b>������</b></p>
                <p><b>����2�� ���</b></p>
            </div>
            </div>
    <!-- ul �±׳� �޴� -->
    <ul>
        <li ><a href="#"><i class="bi bi-person-circle"></i> �������</a>
            <!-- ����޴��� �������� �̿��ؼ� ���ó��(�Ʒ� �������� �ڵ� ����) -->
            <ul>
                <li><a href="#" target="_blank" onclick="openPop()" >�����ʻ��� ����</a></li>
                <li><a href="#">����޴�2</a></li>
            </ul>
        </li>
        <li><a href="#"><i class="bi bi-calendar-week"></i>  �ް�����</a>
            <ul>
                <li><a href="#">����޴�1</a></li>
                <li><a href="#">����޴�2</a></li>
            </ul>
        </li>
        <li><a href="#"><i class="bi bi-file-earmark-check"></i>  ���ڰ���</a> 
            <ul>
                <li><a href="#">����޴�1</a></li>
                <li><a href="#">����޴�2</a></li>
            </ul>
        </li>
        <li><a href="#"><i class="bi bi-boxes"></i> �ڿ���û</a>
            <ul>
                <li><a href="#">����޴�1</a></li>
                <li><a href="#">����޴�2</a></li>
            </ul>
        </li>
        <li><a href="#"><i class="bi bi-people-fill"></i> Ŀ�´�Ƽ</a>
            <ul>
                <li><a href="#">����޴�1</a></li>
                <li><a href="#">����޴�2</a></li>
            </ul>
        </li>
      </ul>
    </nav>
    <main>
      <div style="margin-left:25%;padding:1px 16px;height:1000px;">
      <h1>Main page</h1>
      </div>
    </main>
</body>
<script>
    $(document).ready(function () {
        $('nav li').click(function () {
            // Ŭ���� li ����� ���� ul ��Ҹ� ����Ͽ� ���̰ų� ����
            $(this).find('ul').slideToggle();
        });
	// ���� �о�ö� showImage �Լ� ȣ�� - �Ķ���ʹ� ���ǰ������� ���� ���� ������ ���� �־������
        showImage('profile2.jpg');
        
        
    });

    function openPop(){
    	var width = 400;
        var height = 300;
        var left = (screen.width - width) / 2;
        var top = (screen.height - height) / 2;

        var windowFeatures = 'width=' + width + ',height=' + height + ',left=' + left + ',top=' + top;
		window.open('profile','_blank',windowFeatures);
      
    }
//     	��Ʈ�ѷ��� ȣ���ؼ� �̹��������� ������ �����ִ� �Լ�
    	function showImage(fileCallPath){

    		console.log("##@#@# fileCallpath : "+fileCallPath);
//     		profile-img Ŭ������ div�� html��ҿ� ��Ʈ�ѷ� �޼ҵ� ȣ���Ͽ� ���� �̹��� ������ ����ϴ� img�±׸� �����Ѵ�. 
    		$(".profile-img").html("<img src='./display?fileName="+encodeURI(fileCallPath)+"'>")
    		
    	}
</script>
</html>