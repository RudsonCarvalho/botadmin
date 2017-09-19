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
		
			<c:import url="geral/titulo-servico.jsp" >
				<c:param name="tituloServico" value="Gerenciamento de Recursos"></c:param>
			</c:import>
		
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-3">
									<i class="fa fa-comments fa-5x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<div class="huge">26</div>
									<div>Recursos Cadastrados</div>
								</div>
							</div>
						</div>
						<a href="#">
							<div class="panel-footer">
								<span class="pull-left">detalhes</span> <span class="pull-right"><i
									class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-green">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-3">
									<i class="fa fa-tasks fa-5x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<div class="huge">12</div>
									<div>Recursos Ativos</div>
								</div>
							</div>
						</div>
						<a href="#">
							<div class="panel-footer">
								<span class="pull-left">detalhes</span> <span class="pull-right"><i
									class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-yellow">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-3">
									<i class="fa fa-flag fa-5x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<div class="huge">8</div>
									<div>Recursos mais utilizados</div>
								</div>
							</div>
						</div>
						<a href="#">
							<div class="panel-footer">
								<span class="pull-left">detalhes</span> <span class="pull-right"><i
									class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-red">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-3">
									<i class="fa fa-support fa-5x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<div class="huge">13</div>
									<div>Problemas reportados!</div>
								</div>
							</div>
						</div>
						<a href="#">
							<div class="panel-footer">
								<span class="pull-left">detalhes</span> <span class="pull-right"><i
									class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-12 col-md-9 pull-md-3 bd-content">
					<p class="lead">Nest&#225; p&#225;gina voc&#234; gerencia seus
						recursos, podendo <a href="#novo">cadastrar um novo recurso</a>,
						editar, ou remover um recurso existente.</p>
				</div>
			</div>

			<hr />

			<div class="row">

				<div class="panel panel-default">
					<div class="panel-heading lead">Pesquisa de Recursos</div>
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
								<label for="nomeBot">Nome do Recurso:</label> <input type="text"
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

						<table class="table table-striped">
							<thead>
								<tr>
									<th>C&#243;digo</th>
									<th>Nome do Recurso</th>
									<th>Data de cadastro</th>
									<th>Data de atualiza&#231;&#227;o</th>
									<th>Ativo</th>
									<th>&nbsp;</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>01</td>
									<td>Consulta de Saldo</td>
									<td>10/02/2017</td>
									<td>10/02/2017</td>
									<td>
									<span class="label label-success">
									ativo
									</span>
									</td>
									<td class="form-inline text-right">
										<button type="button" class="btn btn-info">editar</button>
										<button type="button" class="btn btn-danger">remover</button>
									</td>
								</tr>
								<tr>
									<td>02</td>
									<td>Transfer&#234;ncia</td>
									<td>10/03/2017</td>
									<td>10/05/2017</td>
									<td>
									<span class="label label-success">
									ativo
									</span>
									</td>
									<td class="form-inline text-right">
										<button type="button" class="btn btn-info">editar</button>
										<button type="button" class="btn btn-danger">remover</button>
									</td>
								</tr>
								<tr>
									<td>03</td>
									<td>Atualizar Endere&#231;o</td>
									<td>10/05/2017</td>
									<td>10/06/2017</td>
									<td>
									<span class="label label-success">
									ativo
									</span>
									</td>
									<td class="form-inline text-right">
										<button type="button" class="btn btn-info">editar</button>
										<button type="button" class="btn btn-danger">remover</button>
									</td>
								</tr>
								<tr>
									<td>04</td>
									<td>Pagamento</td>
									<td>10/05/2017</td>
									<td>10/06/2017</td>
									<td>
									<span class="label label-danger">
									inativo
									</span>
									</td>
									<td class="form-inline text-right">
										<button type="button" class="btn btn-info">editar</button>
										<button type="button" class="btn btn-danger">remover</button>
									</td>
								</tr>
							</tbody>
						</table>
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
					<div class="panel-heading lead">Cadastrar um Novo Recurso</div>
					<div class="panel-body">

						<form class="form-inline" action="/recursos-cadastrar" method="post">
							
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

	<c:url value="/js/jquery" var="jqueryJs" />

	<script type="text/javascript" src="${jqueryJs}/jquery.min.js"></script>

	<script type="text/javascript"
		src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>