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
						<c:set var="titulo" value="Cadastrar uma Nova Inten&#231;&#227;o" />
					</c:when>
					<c:when test = "${function == 'editar'}">
						<c:set var="titulo" value="Editar uma Inten&#231;&#227;o" />
					</c:when>
					<c:when test = "${function == 'remover'}">
						<c:set var="titulo" value="Remover uma Inten&#231;&#227;o" />
					</c:when>
				</c:choose>

			<c:import url="geral/titulo-servico.jsp">
				<c:param name="tituloServico" value="${titulo}"></c:param>				
			</c:import>

			<div class="row">
				<div class="col-12 col-md-9 pull-md-3 bd-content">
					<p class="lead">Nesta p&#225;gina voc&#234; gerencia uma
						Inten&#231;&#227;o de atendimento.</p>
				</div>
			</div>

			<hr />


			<div class="row">

				<section id="novo">
					<div class="panel panel-default">
						<div class="panel-heading lead"><c:out value="${titulo}" escapeXml="false" /></div>
						<div class="panel-body">
						
							<div id="info-sucess" class="alert alert-success hidden">
							  <strong>Success!</strong> Nova inten&#231;&#227;o gravada com sucesso!
							</div>
						
							<form>
								<div class="form-group">
									<label for="nome">Nome da Inten&#231;&#227;o:</label> <input type="text"
										class="form-control" id="nome" aria-describedby="nomeBot">
										<p id="nomeBot" class="form-text text-muted">
											Informe o nome da Inten&#231;&#227;o, exemplo: Consulta de Saldo.
										</p>
								</div>

								<div class="form-group">
									<label for="descricao">Descri&#231;&#227;o:</label> <input
										type="text" class="form-control" id="descricao" aria-describedby="descricaoBot">
										<p id="descricaoBot" class="form-text text-muted">
											Informe uma descri&#231;&#227;o para a inten&#231;&#227;o caso seja necess&#225;rio.
										</p>
								</div>

								<div class="form-group controls">
									<label for="key-intencoes">Palavras ou frases chaves:</label>
									<div>
										<div class="entry input-group form-inline">
											<input class="form-control" name="fields[]" type="text"
												placeholder="Palavra Chaves" /> <span
												class="input-group-btn">
												<button class="btn btn-success btn-add" style="position:relative; top:-6px;" type="button">
													<span class="glyphicon glyphicon-plus"></span>
												</button>
											</span>
											<button type="button" id="btn-sinonimos" style="position:relative; top:-12px; margin-left:15px;"
												class="btn btn-primary ">Gerar sin&#244;nimos</button>
										</div>
									</div>
									<p id="keyIntencoes" class="form-text text-muted">
											Cadastre palavras chaves, ou frases que estejam relacionadas a esta inten&#231;&#227;o, para que o bot identifique o desejo do cliente com mais precis&#227;o.
										</p>
								</div>


								<div class="form-group">
									<label for="bots">Bot Respons&#225;vel:</label> <select
										class="form-control mx-sm-3" id="bots" aria-describedby="botIntencao">
										<option value="">Selecione</option>
										<option value="des">Bot Consulta de Saldos</option>
										<option value="hom">Bot Cartoes de Credito</option>
										<option value="prod">Bot Cadastro de Endereço</option>
									</select>
									<p id="botIntencao" class="form-text text-muted">
											Selecione o bot respons&#225;vel por gerenciar esta inten&#231;&#227;o.
										</p>
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
									<strong>Info!</strong> Para colocar o bot em produ&#231;&#227;o
									ser&#225; necess&#225;rio informar a senha de administrador.
								</div>

								<div class="form-group bot-prod-info hidden">
									<label for="pwd">Senha:</label> <input type="password"
										class="form-control mx-sm-3" id="pwd" aria-describedby="passwordHelpInline"> <small
										id="passwordHelpInline" class="text-muted">Senha com 8 - 20 caracteres. </small>
								</div>


								<div class="checkbox">
									<label><input type="checkbox"> ativo</label>
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
				window.location="/intencoes";
			});

			$("#btn-sucess").click(function(){
				event.preventDefault();
				$("#info-sucess").removeClass("hidden");
			});
			
			

		    $(document).on('click', '.btn-add', function(e)
		    {
		        e.preventDefault();

		        var controlForm = $('.controls div:first'),
		            currentEntry = $(this).parents('.entry:first'),
		            newEntry = $(currentEntry.clone()).appendTo(controlForm);

		        newEntry.find('input').val('');
		        controlForm.find('.entry:not(:last) .btn-add')
		            .removeClass('btn-add').addClass('btn-remove')
		            .removeClass('btn-success').addClass('btn-danger')
		            .html('<span class="glyphicon glyphicon-minus"></span>');
		    }).on('click', '.btn-remove', function(e)
		    {
				$(this).parents('.entry:first').remove();

				e.preventDefault();
				return false;
			});
				

			
		});
	</script>

</body>

</html>