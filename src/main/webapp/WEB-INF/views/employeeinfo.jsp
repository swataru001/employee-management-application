<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/bootstrap.css">
<link rel="stylesheet" href="../../css/style.css">
</head>
<body>
<div class="container">
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="${pageContext.request.contextPath}/EmployeeManagement/showEmployeeList"> <!-- 企業ロゴ --> <img
						alt="main log" src="../../img/header_logo_small.png">
					</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="">従業員管理</a></li>
					</ul>
					<p class="navbar-text navbar-right">
						<a href="../administrator/login.html" class="navbar-link">ログアウト</a>
					</p>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>

		<!-- パンくずリスト -->
		<ol class="breadcrumb">
			<li><a href="${pageContext.request.contextPath}/EmployeeManagement/showEmployeeList">従業員リスト</a></li>
			<li class="active">従業員詳細</li>
		</ol>
		
		<!-- register form -->
		<div class="row">
			<div
				class="col-lg-offset-2 col-lg-8 col-md-offset-2 col-md-8 col-sm-12 col-xs-12">
				<!-- 背景をグレーに、埋め込んだようなコンポーネント -->
				<div class="well">
				<form action="${pageContext.request.contextPath}/EmployeeManagement/updateDependentsCount" method="post">
						<fieldset>
							<legend>従業員情報</legend>
							<table class="table table-striped">
							  <tr>
							    <th nowrap>
							      従業員名
							    </th>
							    <td>
							  <c:out value="${employee.name}"/>  
							    </td>
							  </tr>
							  <tr>
							    <th nowrap>
							      写真
							    </th>
							    <td>
							      <img src="../../img/085951.png"/>
							    </td>
							  </tr>
							  <tr>
							    <th nowrap>
							      性別
							    </th>
							    <td>
							    <c:out value="${employee.gender}"/>
							    </td>
							  </tr>
							  <tr>
							    <th nowrap>
							      入社日
							    </th>
							    <td>
							    <c:out value="${employee.hiredate}"/>
							    </td>
							  </tr>
							  <tr>
							    <th nowrap>
							      メールアドレス
							    </th>
							    <td>
							     <c:out value="${employee.mailAddress}"/>
							    </td>
							  </tr>
							  <tr>
							    <th nowrap>
							      電話番号
							    </th>
							    <td>
							     <c:out value="${employee.telephone}"/>
							    </td>
							  </tr>
							  <tr>
							    <th nowrap>
							      給料
							    </th>
							    <td>
							   <c:out value="${employee.salary}"/>円
							    </td>
							  </tr>
							  <tr>
							    <th nowrap>
							      郵便番号
							    </th>
							    <td>
							    <c:out value="${employee.zipCode}"/> 
							    </td>
							  </tr>
							  <tr>
							    <th nowrap>
							      住所
							    </th>
							    <td>
							  <c:out value="${employee.address}"/>    
							    </td>
							  </tr>
							  <tr>
							    <th nowrap>
							      特性
							    </th>
							    <td>
							    <c:out value="${employee.characteristics}"/> 
							    </td>
							  </tr>
							  <tr>
							    <th nowrap>
							      扶養人数
							    </th>
							    <td>
									<label class="control-label" style="color: red" for="inputInspectionPointName">扶養人数を入力してください</label>
									 
									 <input type="hidden" value="${employee.id}" name="id">
									<input type="text" id="inputInspectionPointName" name="dependentsCount" class="form-control">
							    </td>
							  </tr>
							</table>
							<button type="submit" class="btn btn-primary">入力</button>
						</fieldset>
						</form>
				</div>
			</div>
		</div>
		

	</div>
	<!-- end container -->

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="../../static/js/bootstrap.min.js"></script>
</body>
</html>