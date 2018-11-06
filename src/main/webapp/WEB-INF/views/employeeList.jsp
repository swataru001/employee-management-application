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
					<a class="navbar-brand" href="#"> <!-- 企業ロゴ --> <img
						alt="main log" src="../../img/header_logo_small.png">
					</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="list.html">従業員管理</a></li>
					</ul>
					<p class="navbar-text navbar-right">
						<a href="${pageContext.request.contextPath}/EmployeeManagement/index" class="navbar-link">ログアウト</a>
					</p>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		
		<!-- パンくずリスト -->
		<ol class="breadcrumb">
			<li class="active"><a href="${pageContext.request.contextPath}/EmployeeManagement/showEmployeeList">従業員リスト</a></li>
		</ol>

		<!-- table -->
		<div class="row">
			<div
				class="table-responsive col-lg-offset-2 col-lg-8 col-md-offset-2 col-md-8 col-sm-12 col-xs-12">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>従業員名</th>
							<th>入社日</th>
							<th>扶養人数</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${employeeList}" var="employee">
						<tr>
							<td><a href="${pageContext.request.contextPath}/EmployeeManagement/showEmployeeInfo?id=<c:out value="${employee.id}"/>"><c:out value="${employee.name}"/></a></td>
							<td>${employee.hiredate}</td>
							<td>${employee.dependentsCount}</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- end container -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="../../static/js/bootstrap.min.js"></script>
</body>
</body>
</html>