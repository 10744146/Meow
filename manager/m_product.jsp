<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<link rel="icon" href="image/logo.ico" type="image/x-icon" / >
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		<title></title>
		<script src="assets/js/pass.js"></script>
	</head>
	<body>
		<div class="container-fluid px-0">
			<div class="row">
				<div class="col-md-12">
					<table class="table table-dark my-0">
						<tbody>
							<tr>
								<td>
									<p>產品系統</p>
								</td>
								<td class="float-right">
									<form>
										<button class="btn btn-outline-info" type="button" data-toggle="modal" data-target="#exampleModal2">刪除</button>
									</form>
								</td>
								<td class="float-right">
									<form>
										<button class="btn btn-outline-info" type="button" data-toggle="modal" data-target="#exampleModal3">修改</button>
									</form>
								</td>
								<td class="float-right">
									<!-- Button trigger modal -->
									<form>
										<button type="button" class="btn btn-outline-info" data-toggle="modal" data-target="#exampleModal1">
										+新增
										</button>
									</form>
								</td>
							</tr>
						</tbody>
					</table>
					<!-- Modal1 -->
					<form  name="form1" method="POST" action="newPro.jsp" class="needs-validation" novalidate>
						<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">新增產品</h5>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										<form>
											<div class="form-group">
												<label for="exampleInputName">產品名稱:</label>
												<input type="text" class="form-control" id="exampleInputName" name="proName" required>
											</div><br>
											<div class="form-group">
												<label for="exampleInputPrice">產品價格:</label>
												<input type="text" class="form-control" id="exampleInputPrice" name="proPrice" required>
											</div><br>
											<div class="form-group">
												<label for="exampleInputDiscount">產品折價:</label>
												<input type="text" class="form-control" id="exampleInputDiscount" name="proDis" required>
											</div><br>
											<div class="form-group">
												<label for="exampleInputPic1">產品圖一:</label>
												<input type="text" class="form-control" id="exampleInputPic1" name="proPic1" required>
											</div><br>
											<div class="form-group">
												<label for="exampleInputPic2">產品圖二:</label>
												<input type="text" class="form-control" id="exampleInputPic2" name="proPic2" required>
											</div><br>
											<div class="form-group">
												<label for="exampleInputPic3">產品圖三:</label>
												<input type="text" class="form-control" id="exampleInputPic3" name="proPic3" required>
											</div><br>
											<div class="form-group">
												<label for="exampleInputNote">產品說明:</label>
												<input type="text" class="form-control" id="exampleInputNote" name="proNote" required>
											</div><br>
											<div class="form-group">
												<label for="exampleInputStock">產品庫存:</label>
												<input type="text" class="form-control" id="exampleInputStock" name="stoNum" required>
											</div><br>
											<div class="form-group">
												<label for="exampleInput">驗證碼:</label>
												<input type="password" class="form-control" id="exampleInput" name="verCode" aria-describedby="Help" style="width: 100px;" required>
												<small id="Help" class="form-text text-muted">(驗證碼正確才能進行修改)</small>
											</div>
										</div>
										<div class="modal-footer">
											<button type="submit" class="btn btn-info">送出</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</form>
					<!-- Modal2 -->
					<form  name="form1" method="POST" action="DelPro.jsp" class="needs-validation" novalidate>
						<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">刪除產品</h5>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										<form>
											<div class="form-group">
												<label for="exampleInputName">產品名稱:</label>
												<input type="text" class="form-control" id="exampleInputName" name="proName" required>
											</div><br>
											<div class="form-group">
												<label for="exampleInput">驗證碼:</label>
												<input type="password" class="form-control" id="exampleInput1" name="verCode" aria-describedby="Help" style="width: 100px;" required>
												<small id="Help" class="form-text text-muted">(驗證碼正確才能進行修改)</small>
											</div>
										</form>
									</div>
									<div class="modal-footer">
										<button type="submit" class="btn btn-info">送出</button>
									</div>
								</div>
							</div>
						</div>
					</form>
					<!-- Modal3 -->
					<form  name="form1" method="POST" action="changePro.jsp" class="needs-validation" novalidate>
						<div class="modal fade" id="exampleModal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">修改產品資訊</h5>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										<form>
											<div class="form-group">
												<label for="exampleInputName">產品名稱:</label>
												<input type="text" class="form-control" id="exampleInputName" name="proName" required>
											</div><br>
											<div class="form-group">
												<label for="exampleInputPrice">產品價格:</label>
												<input type="text" class="form-control" id="exampleInputPrice" name="proPrice" required>
											</div><br>
											<div class="form-group">
												<label for="exampleInputDiscount">產品折價:</label>
												<input type="text" class="form-control" id="exampleInputDiscount" name="proDis" required>
											</div><br>
											<div class="form-group">
												<label for="exampleInputPic1">產品圖一:</label>
												<input type="text" class="form-control" id="exampleInputPic1" name="proPic1" required>
											</div><br>
											<div class="form-group">
												<label for="exampleInputPic2">產品圖二:</label>
												<input type="text" class="form-control" id="exampleInputPic2" name="proPic2" required>
											</div><br>
											<div class="form-group">
												<label for="exampleInputPic3">產品圖三:</label>
												<input type="text" class="form-control" id="exampleInputPic3" name="proPic3" required>
											</div><br>
											<div class="form-group">
												<label for="exampleInputNote">產品說明:</label>
												<input type="text" class="form-control" id="exampleInputNote" name="proNote" required>
											</div><br>
											<div class="form-group">
												<label for="exampleInputStock">產品庫存:</label>
												<input type="text" class="form-control" id="exampleInputStock" name="stoNum" required>
											</div><br>
											<div class="form-group">
												<label for="exampleInput">驗證碼:</label>
												<input type="password" class="form-control" id="exampleInput2" name="verCode" aria-describedby="Help" style="width: 100px;" required>
												<small id="Help" class="form-text text-muted">(驗證碼正確才能進行修改)</small>
											</div>
										</form>
									</div>
									<div class="modal-footer">
										<button type="submit" class="btn btn-info">送出</button>
									</div>
								</div>
							</div>
						</div>
					</form>
					<!-- 後臺可自行更改欄數 -->
					<table class="table">
						<thead class="thead-light">
							<tr>
								<th>#</th>
								<th>產品名稱</th>
								<th>產品價格</th>
								<th>產品折價</th>
								<th>產品圖一</th>
								<th>產品圖二</th>
								<th>產品圖三</th>
								<th>產品說明</th>
								<th>產品庫存</th>
							</tr>
						</thead>
						<tbody>
						<%
						try {
								//Step 1: 載入資料庫驅動程式 
								Class.forName("com.mysql.jdbc.Driver");
									try {
										//Step 2: 建立連線 	
										String url="jdbc:mysql://localhost/";
										String sql="";

										Connection con=DriverManager.getConnection(url,"root","1234");   						
										if(con.isClosed())
											out.println("連線建立失敗");
										else
										{
											sql="USE nocat";
											con.createStatement().execute(sql);   
				
											String sql1 = "SELECT proName,proPrice,proDis,proPic1,proPic2,proPic3,proNote,stoNum FROM products";  //查詢語句
											con.createStatement().execute(sql1); 
											ResultSet rs = con.createStatement().executeQuery(sql1);      
											int i=1;
											while (rs.next()) {
												out.println("<tr><th>"+i+"</th><td>"+rs.getString("proName")+"</td><td>"+ rs.getInt("proPrice")+"</td><td>"+ rs.getInt("proDis")+"</td><td>"+rs.getString("proPic1")+"</td><td>"+rs.getString("proPic2")+"</td><td>"+rs.getString("proPic3")+"</td><td>"+rs.getString("proNote")+"</td><td>"+ rs.getInt("stoNum")+"</td></tr>"); 
												i++;
											} 
										}
										con.close();
										}
										
									catch (SQLException sExec) {
																out.println("SQL錯誤"+sExec.toString());
									}
								}
								catch (ClassNotFoundException err) {
									out.println("class錯誤"+err.toString());
								}
							
        							
							%>
							
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	</body>
</html>