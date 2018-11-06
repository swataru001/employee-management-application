<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
		<!-- 上余白 -->
		<div class="row">
			<div class="col-lg-offset-0 col-lg-6 col-md-8 col-sm-10 col-xs-12">
				<img src="../../img/header_logo.png">
			</div>
		</div>
		<div class="row">
			<div
				class="col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8 col-sm-10 col-xs-12">
				<!-- 背景をグレーに、埋め込んだようなコンポーネント -->
				<div class="well">
					<form:form method="post"
						action="${pageContext.request.contextPath}/EmployeeManagement/executeLogin"
						modelAttribute="administratorForm">
						<fieldset>
							<legend>ログイン</legend>
							<div class="form-group">
								
							</div>
							<div class="form-group">
								<label for="inputEmail">メールアドレス:</label>
								<form:errors name="mailAddress" cssStyle="color:red" element="div"/>
								<form:input path="mailAddress" placeholder="Email"/>
							</div>
							<div class="form-group">
							<label for="password">
							パスワード:
							</label>
							<form:input path="password" placeholder="Password"/>
							</div>
							<button type="submit" class="btn btn-primary">ログイン</button>
					</form:form>
					<div class="form-group">
						<a href="${pageContext.request.contextPath}/EmployeeManagement/registration">管理者登録はこちらから</a>
					</div>
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