<%@page import = "java.sql.*,java.util.*,java.io.*"%>
<%@page language="java" contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@include file="loginman/config.jsp" %>

<%
if(session.getAttribute("userName") != null ){
    sql = "SELECT * FROM manager WHERE manName='" +session.getAttribute("userName")+"';"; 
	ResultSet paperrs1 =con.createStatement().executeQuery(sql);
	String manName="", manpass="";
	while(paperrs1.next()){
	    manName=paperrs1.getString("manName");
		manpass=paperrs1.getString("manpass");
		
	}

%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<link rel="icon" href="image/logo.ico" type="image/x-icon" / >
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		<title>管理系統</title>
	</head>
	<body>
		<!-- 導覽欄 -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="#"><img src="image/image.png" alt="" height="50px;">&nbsp;網站後台管理系統</a>
			<a class="navbar-brand mr-0" href="loginman/m_logout.jsp">登出</a>
		</nav>
		<!-- 管理畫面 -->
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-2 pr-0 pl-0" style="border: 1px solid black;">
					<div class="list-group list-group-flush" id="list-tab" role="tablist">
						<a class="list-group-item list-group-item-light list-group-item-action active" id="list-keeper-list" data-toggle="list" href="#list-keeper" role="tab" aria-controls="keeper">管理者</a>
						<a class="list-group-item list-group-item-light list-group-item-action" id="list-goods-list" data-toggle="list" href="#list-goods" role="tab" aria-controls="goods">產品</a>
					</div>
				</div>
				<div class="col-md-10 pr-0 pl-0" style="border: 1px solid black;">
					<div class="tab-content" id="nav-tabContent">
						<!-- 管理者 -->
						<div class="tab-pane fade show active" id="list-keeper" role="tabpanel" aria-labelledby="list-keeper-list">
							<!-- <iframe src="m_manager.html" width="1278" height="675">
							</iframe> -->
							<!-- 16:9 aspect ratio -->
							<div class="embed-responsive embed-responsive-16by9">
								<iframe class="embed-responsive-item" src="m_manager.jsp"></iframe>
							</div>
						</div>
						<!-- 產品 -->
						<div class="tab-pane fade" id="list-goods" role="tabpanel" aria-labelledby="list-goods-list">
							<!-- 16:9 aspect ratio -->
							<div class="embed-responsive embed-responsive-16by9">
								<iframe class="embed-responsive-item" src="m_product.jsp"></iframe>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%
}
else{
	response.sendRedirect("manIndex.html") ;
}
%>
		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	</body>
</html>