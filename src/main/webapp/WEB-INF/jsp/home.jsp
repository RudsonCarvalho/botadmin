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
				<c:param name="tituloServico" value="Painel de Administra&#231;&#227;o do Auto Atendimento"></c:param>
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
									<div>Bots em Operação</div>
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
									<div>Atendimentos Resolvidos</div>
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
									<div>Não Resolvidos</div>
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
									<div>Reclamações Recebidas</div>
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
			  <div class="col-sm-4">
			  	<h3>Tempo de espera (Wait Time)</h3>
			 	 <canvas id="myChart1" width="400" height="400"></canvas>
			  </div>
			  <div class="col-sm-4">
			  	<h3>Tempo de Atendimento</h3>
			  	<canvas id="myChart2" width="400" height="400"></canvas>
			  </div>
			  <div class="col-sm-4">
			  	<h3>Nível de serviço</h3>
			  	<canvas id="myChart3" width="400" height="400"></canvas>
			  </div>			
			</div>
			
			<hr />
			
			<div class="row">
				<div class="col-sm-4">
				  	<h3>Taxa de abandono</h3>
				 	 <canvas id="myChart4" width="400" height="400"></canvas>
				  </div>
				  <div class="col-sm-4">
				  	<h3>Taxa de contato</h3>
				  	<canvas id="myChart5" width="400" height="400"></canvas>
				  </div>
				  <div class="col-sm-4">
				  	<h3>Conversão</h3>
				  	<canvas id="myChart6" width="400" height="400"></canvas>
				  </div>				
			</div>
			
		</div>
			
		
	</div>
	
	<c:import url="geral/footer.jsp" />
	
	<c:import url="geral/js-geral.jsp" />
	
	<c:url value="/js/chart" var="chartjs" />
	<script type="text/javascript" src="${chartjs}/Chart.bundle.js"></script>
	<script type="text/javascript" src="${chartjs}/Chart.min.js"></script>
	<script type="text/javascript" src="${chartjs}/Charts.js"></script>

	
</body>

</html>