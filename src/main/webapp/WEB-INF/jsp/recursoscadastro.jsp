<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>

<c:import url="geral/css-geral.jsp" />

</head>
<body>

	<c:import url="geral/menu.jsp" />

	<div class="container">

		<div class="starter-template">

				<c:choose>
					<c:when test="${function == 'cadastrar'}">
						<c:set var="titulo" value="Cadastrar um Novo Recurso" />
					</c:when>
					<c:when test = "${function == 'editar'}">
						<c:set var="titulo" value="Editar um Recurso" />
					</c:when>
					<c:when test = "${function == 'remover'}">
						<c:set var="titulo" value="Remover um Recurso" />
					</c:when>
				</c:choose>

			<c:import url="geral/titulo-servico.jsp">
				<c:param name="tituloServico" value="${titulo}"></c:param>				
			</c:import>

			<div class="row">
				<div class="col-12 col-md-9 pull-md-3 bd-content">
					<p class="lead">Nesta p&#225;gina voc&#234; gerencia um
						recurso disponibilizado para o cliente.</p>
				</div>
			</div>

			<hr />


			<div class="row">

				<section id="novo">
					<div class="panel panel-default">
						<div class="panel-heading lead"><c:out value="${titulo}" /></div>
						<div class="panel-body">
						
							<div id="info-sucess" class="alert alert-success hidden">
							  <strong>Success!</strong> Novo recurso gravado com sucesso!
							</div>
						
							<form>
								<div class="form-group">
									<label for="nome">Nome do recurso:</label> <input type="text"
										class="form-control" id="nome" aria-describedby="nomeBot">
										<p id="nomeBot" class="form-text text-muted">
											Informe o nome do recurso que indentifique a sua funcionalidade, exemplo: <strong>Processo de abertura de conta corrente</strong>.
										</p>
								</div>

								<div class="form-group">
									<label for="descricao">Descri&#231;&#227;o:</label> <input
										type="text" class="form-control" id="descricao" aria-describedby="descricaoRec">
										<p id="descricaoRec" class="form-text text-muted">
											Informe uma descri&#231;&#227;o para o recurso caso seja necess&#225;rio.
										</p>
								</div>

								<div class="form-group">
									<label for="nome-amigavel">Titulo do recurso:</label> <input type="text" class="form-control"
										id="nome-amigavel" aria-describedby="nomeAmigavelDesc">
										<p id="nomeAmigavelDesc" class="form-text text-muted">
											Titulo do recurso que ser&aacute; apresentado para o cliente.
										</p>
								</div>
								
								<div class="form-group">
									<label for="tiporecurso">Tipo do recurso:</label> <select
										class="form-control mx-sm-3" id="tiporecurso">
										<option value="">Selecione</option>
										<option value="info">Texto de Informa&#231;&#227;o ou ajuda</option>
										<option value="recurso">Outro Recurso Existente</option>
										<option value="intencao">Inten&#231;&#227;o</option>
										<option value="imagem">Imagem</option>
										<option value="imagem">Documento (Word, Excel, Power point, PDFs)</option>
										<option value="video">Video</option>										
										<option value="link">Recursos de intera&#231;&#227;o web (links, bot&#227;o de a&#231;&#227;o, menus, carousel)</option>
										<option value="prod">Produ&#231;&#227;o</option>
									</select>
								</div>

								<div class="form-group">
									<label for="ambiente">Ambiente:</label> <select
										class="form-control mx-sm-3" id="ambiente">
										<option value="">Selecione</option>
										<option value="des">Desenvolvimento</option>
										<option value="hom">Homologa&#231;&#227;o</option>
										<option value="prod">Produ&#231;&#227;o</option>
									</select>
								</div>

								<div class="alert alert-info bot-prod-info hidden">
									<strong>Info!</strong> Para colocar o recurso em produ&#231;&#227;o
									ser&#225; necess&#225;rio informar a senha de administrador.
								</div>

								<div class="form-group bot-prod-info hidden">
									<label for="pwd">Senha:</label> <input type="password"
										class="form-control mx-sm-3" id="pwd" aria-describedby="passwordHelpInline"> <small
										id="passwordHelpInline" class="text-muted">Senha com 8 - 20 caracteres. </small>
								</div>

								<div class="checkbox">
									<label aria-describedby="masterBot"><input type="checkbox"> master</label>
									<p id="masterBot" class="form-text text-muted">
											O bot ser&#225; um bot master, respons&#225;vel por realizar o primeiro atendimento e direcionar a necessidade do cliente para os bots especializados.
										</p>
								</div>

								<div class="checkbox">
									<label aria-describedby="ativoRec"><input type="checkbox"> ativo</label>
									<p id="ativoRec" class="form-text text-muted">
											O recurso est&#225; ativo, podendo ser disponilizado em atendimento.
										</p>
								</div>

								<div class="form-inline text-right">
									<button type="button" id="btn-voltar" class="btn btn-default ">Cancelar</button>
									
									<c:if test="${function == 'remover'}">
									<button type="button"  id="btn-sucess" class="btn btn-danger ">Remover</button>
									</c:if>
									<c:if test="${function != 'remover'}">
									<button type="button"  id="btn-sucess" class="btn btn-success ">Gravar</button>
									</c:if>
									
								</div>

							</form>
						</div>

					</div>
				</section>
			</div>

			<hr />

			<%-- <h2>Message: ${message}</h2> --%>
		</div>

	</div>

	<c:import url="geral/footer.jsp" />

	<c:url value="/js/jquery" var="jqueryJs" />
	<script type="text/javascript" src="${jqueryJs}/jquery.min.js"></script>
	<script type="text/javascript"
		src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		$(function() {

			$('select').on('change', function() {
				var selected = $(this).find("option:selected").val();
				if (selected == "prod") {
					$(".bot-prod-info").removeClass("hidden");
				} else {
					$(".bot-prod-info").addClass("hidden");
				}
			});
			
			$("#btn-voltar").click(function(){
				event.preventDefault();
				window.location="/bots";
			});

			$("#btn-sucess").click(function(){
				event.preventDefault();
				$("#info-sucess").removeClass("hidden");
			});
			
		});
	</script>

</body>

</html>