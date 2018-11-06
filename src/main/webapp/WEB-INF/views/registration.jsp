<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form"%>
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
		<!-- login form -->
		<div class="row">
			<div class="col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8 col-sm-10 col-xs-12">
				<!-- 背景をグレーに、埋め込んだようなコンポーネント -->
				<div class="well">
					<form:form action="${pageContext.request.contextPath}/EmployeeManagement/executeregisteration" modelAttribute="administratorForm">
						<fieldset>
							<legend>管理者登録<br>(システムにログインできる管理者を登録します)</legend>
							<!-- 氏名 -->
							<div class="form-group">
								<div class="row">
									<div class="col-sm-12">
										<label for="inputSubjectName">
											氏名:
										</label>
										<label class="control-label" style="color: red" for="inputSubjectName">
											氏名を入力してください
										</label>
										<form:input path="name" placeholder="山田太郎"/>
									</div>
								</div>
							</div>
							<!-- メールアドレス -->
							<div class="form-group">
								<div class="row">
									<div class="col-sm-12">
										<label for="inputSubjectEmail">
											メールアドレス:
										</label>
										<label class="control-label" style="color: red" for="inputSubjectEmail">
											メールアドレスを入力してください
										</label>
										<form:input path="mailAddress" placeholder="yamada@mail.com"/>
									</div>
								</div>
							</div>
							<!-- パスワード -->
							<div class="form-group">
								<div class="row">
									<div class="col-sm-12">
										<label for="inputPassward">
											パスワード:
										</label>
										<label class="control-label" style="color: red" for="inputPassward">
											パスワードを入力してください
										</label>
										<form:input path="password" placeholder="password"/>
									</div>
								</div>
							</div>
							<!-- 登録ボタン -->
							<div class="form-group">
								<div class="row">
									<div class="col-sm-12">
										<button type="submit" class="btn btn-primary">登録</button>
									</div>
								</div>
							</div>
						</fieldset>
					</form:form>
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