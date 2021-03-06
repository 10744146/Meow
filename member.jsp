<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>

<%
if(session.getAttribute("userName") != null ){
    sql = "SELECT * FROM member WHERE userName='" +session.getAttribute("userName")+"';"; 
	ResultSet paperrs1 =con.createStatement().executeQuery(sql);
	String userName="", password="",name="",sex="",birth="",mail="";
	while(paperrs1.next()){
	    userName=paperrs1.getString("userName");
		password=paperrs1.getString("password");
		name=paperrs1.getString("name");
		sex=paperrs1.getString("sex");
		birth=paperrs1.getString("birth");
		mail=paperrs1.getString("mail");
	}

%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<link rel="icon" href="image/logo.ico" type="image/x-icon" / >
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<title>會員專區-資本資料</title>
		<script src="assets/js/detect.js"></script>
		<script src="assets/js/member.js"></script>
		<style>
			@import url(assets/css/text.css);
		</style>
	</head>
	<body>
		<!-- 導覽頁 -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<img src="image/image0.png" alt="" style="width: 300px; height:100px;">
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="index.jsp">首頁</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="act1.html">優惠活動</a>
						<a class="dropdown-item" href="act2.html">最新消息</a>
						<a class="dropdown-item" href="goodsall.jsp">全部商品</a>
						<a class="dropdown-item" href="contact.html">關於我們</a>
					</div>
				</li>
			</ul>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent" style="font-size: 20px;">
				<ul class="navbar-nav ml-5">
					<li class="nav-item">
						<a class="nav-link" href="member.jsp">基本資料</a>
					</li>
				</ul>
				<ul class="navbar-nav ml-5">
					<li class="nav-item">
						<a class="nav-link" href='function/mycollect.jsp'>我的收藏</a>
					</li>
				</ul>
				<ul class="navbar-nav ml-5">
					<li class="nav-item">
						<a class="nav-link" href="function/myshoppingcar.jsp">
							<img src="image/image3.png" alt="" style="width: 35px; height:35px;">
						</a>
					</li>
				</ul>
				<ul class="navbar-nav ml-5 mr-5">
					<li class="nav-item">
						<a class="nav-link" href="function/login/logout.jsp">登出</a>
					</li>
				</ul>
			</div>
		</nav><br>
		<!-- 內容 -->
		<div class="container">
			<h1>基本資料</h1>
			<div class="row justify-content-md-center">
				<div class="col-md-auto">
					<h3 class="my-5">名字:&nbsp;&nbsp;&nbsp;<span style="font-size: 20px;"><%=name%></span></h3>
					<h3 class="my-5">帳號:&nbsp;&nbsp;&nbsp;<span style="font-size: 20px;"><%=userName%></span></h3>
					<h3 class="my-5">密碼:&nbsp;&nbsp;&nbsp;<span style="font-size: 20px;"><%=password%></span></h3>
				</div>
				<div class="col-md-2"></div>
				<div class="col-md-auto">
					<h3 class="my-5">性別:&nbsp;&nbsp;&nbsp;<span style="font-size: 20px;"><%=sex%></span></h3>
					<h3 class="my-5">生日:&nbsp;&nbsp;&nbsp;<span style="font-size: 20px;"><%=birth%></span></h3>
					<h3 class="my-5">信箱:&nbsp;&nbsp;&nbsp;<span style="font-size: 20px;"><%=mail%></span></h3>
				</div>
			</div>
			<div class="row justify-content-md-center">
				<div class="col-md-auto">
					<button type="button" class="btn btn-info" data-toggle="modal" data-target="#exampleModal">修改</button>
				</div>
			</div>
			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">修改</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<form class="needs-validation justify-content-center" novalidate method="POST" action="function/login/update.jsp">
								<label for="validationCustom02">帳號</label>
								<input type="text" class="form-control" id="validationCustom02" value="<%=userName%>" name="userName" style="width:300px;" required>
								<label for="validationCustom01">名字</label>
								<input type="text" class="form-control" id="validationCustom01" value="<%=name%>" name="name" style="width:300px;" required>
								
								<label for="validationCustom03">密碼</label>
								<input type="text" class="form-control" id="validationCustom03" value="<%=password%>" name="password" style="width:300px;" required>
								<label for="validationCustom04">性別</label>
								<div id="validationCustom04">
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="customRadioInline1" name="customRadioInline1" value="male" class="custom-control-input" required>
										<label class="custom-control-label" for="customRadioInline1">男</label>
									</div>
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="customRadioInline2" name="customRadioInline1" value="female" class="custom-control-input" required>
										<label class="custom-control-label" for="customRadioInline2">女</label>
									</div>
								</div>
								<label for="validationCustom05">生日</label>
								<input type="date" class="form-control" id="validationCustom05" name="birth" value="<%=birth%>" style="width:300px;" required/>
								<label for="validationCustom06">信箱</label>
								<input type="mail" class="form-control" id="validationCustom06" name="mail" value="<%=mail%>" style="width:300px;" required><br>
								<button class="btn btn-info" type="submit" onclick="response()">確認</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<%
}
else{
	response.sendRedirect("registered_again.html") ;
}
%>
		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	</body>
</html>