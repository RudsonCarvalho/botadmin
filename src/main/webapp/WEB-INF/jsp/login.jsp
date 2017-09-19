<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>

<c:import url="geral/css-geral.jsp" />

<c:url value="/css" var="css" />
<link href="${css}/fonts/font-roboto.css" type="text/css"
	rel="stylesheet" />
<link href="${css}/login/login.css" type="text/css" rel="stylesheet" />


</head>
<body>

	<div class="container">

		<div class="starter-template">

			<div class="row">
				<div class="col-lg-12 vertical-center "
					style="text-align: center; float: none; margin: 0 auto;">
					<button class="btn btn-large btn-primary" id="login"
					style="text-align: center; float: none; margin: 0 auto;"
						data-toggle="modal" data-target="#login-modal">ChatBot Adim Realizar
						Login</button>
				</div>


				<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true"
					style="display: none;">
					<div class="modal-dialog">
						<div class="loginmodal-container">
							<h1>ChatBot Admin</h1>
							<br>
							<form action="/home">
								<input type="text" name="user" placeholder="Usuário"> <input
									type="password" name="pass" placeholder="Senha"> <input
									type="submit" name="login" class="login loginmodal-submit"
									value="Login">
							</form>

							<div class="login-help">
								<a href="#">Registrar</a> - <a href="#">Esqueci minha Senha</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<c:import url="geral/js-geral.jsp" />
	<script>
		$("#login").trigger('click');
	</script>
</body>
</html>
