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

			<c:import url="geral/titulo-servico.jsp">
				<c:param name="tituloServico" value="Gerenciamento de Usu&aacute;rios e Acessos"></c:param>
			</c:import>

			

			<div class="row">
				<div class="col-12 col-md-9 pull-md-3 bd-content">
					<p class="lead">Nesta p&#225;gina voc&#234; gerencia os usuários existentes no sistema, podendo <a href="#novo">cadastrar um novo usuário</a>, editar, ou remover um usuário existente.</p>
				</div>
			</div>

			<hr />

			<div class="row">

				<div class="panel panel-default">
					<div class="panel-heading lead">Pesquisa de Usuários</div>
					<div class="panel-body">

						<form class="form-inline">
							<div class="form-group mr-15">
								<label for="dataInicio">Data Inicio:</label> <input type="date"
									class="form-control" id="dataCadastro">
							</div>
							<div class="form-group mr-15">
								<label for="dataFim">Data Fim:</label> <input type="date"
									class="form-control" id="dataFim">
							</div>
							<div class="form-group mr-15">
								<label for="nomeBot">Nome do Usuário:</label> <input type="text"
									class="form-control" id="nomeBot">
							</div>						
							<div class="checkbox mr-15">
								<label><input type="checkbox"> Inativos</label>
							</div>
							<button type="submit" class="btn btn-default pull-right">Pesquisar</button>
							
							

						</form>

					</div>
				</div>

			</div>

			<hr />

			<div class="row">
				<div class="panel panel-default">
					<div class="panel-heading lead">Resultado da Pesquisa</div>
					<div class="panel-body">
						<form id="form-bots"  method="post">
						<table class="table table-striped">
							<thead>
								<tr>
									<th>C&#243;digo</th>
									<th>Nome do usuário</th>
									<th>Data de cadastro</th>
									<th>Data de atualiza&#231;&#227;o</th>
									<th>Ambiente</th>
									<th>Master</th>
									<th>Ativo</th>
									<th>&nbsp;</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>01</td>
									<td>Carlos Alberto</td>
									<td>10/02/2017</td>
									<td>10/02/2017</td>
									<td>desenvolvimento</td>
									<td>-</td>
									<td>
									<span class="label label-success">
									ativo
									</span>
									</td>
									<td class="form-inline text-right">
										<button type="button" class="btn btn-editar btn-info">editar</button>
										<button type="button" class="btn btn-remover btn-danger">remover</button>
									</td>
								</tr>
								<tr>
									<td>02</td>
									<td>Aline Santana</td>
									<td>10/03/2017</td>
									<td>10/05/2017</td>
									<td>homologa&#231;&#227;o</td>
									<td>-</td>
									<td>
									<span class="label label-success">
									ativo
									</span>
									</td>
									<td class="form-inline text-right">
										<button type="button" class="btn  btn-editar btn-info">editar</button>
										<button type="button" class="btn  btn-remover btn-danger">remover</button>
									</td>
								</tr>
								<tr>
									<td>03</td>
									<td>Caroline Silva</td>
									<td>10/05/2017</td>
									<td>10/06/2017</td>
									<td>produ&#231;&#227;o</td>
									<td>-</td>
									<td>
									<span class="label label-success">
									ativo
									</span>
									</td>
									<td class="form-inline text-right">
										<button type="button" class="btn  btn-editar btn-info">editar</button>
										<button type="button" class="btn  btn-remover btn-danger">remover</button>
									</td>
								</tr>
								
								
							</tbody>
						</table>
						</form>
						<ul class="pagination">
							<li><a href="#">1</a></li>
							<li class="active"><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
						</ul>
					</div>
				</div>

			</div>
			
			<hr />
			
			
			<div class="row">

				<section id="novo">
				<div class="panel panel-default" >
					<div class="panel-heading lead">Cadastrar um Novo Usuário</div>
					<div class="panel-body">

						<form class="form-inline"  action="/acessos-cadastrar" method="post">
							
							<button type="submit" class="btn btn-primary pull-right">Cadastrar Novo</button>
							
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

						
			$(".btn-editar").click(function(){
				event.preventDefault();
				$("#form-bots").attr('action','/bots-editar');
				$("#form-bots").submit();
			});

			$(".btn-remover").click(function(){
				event.preventDefault();
				$("#form-bots").attr('action','/bots-remover');
				$("#form-bots").submit();
			});
			
		});
	</script>

</body>

</html>