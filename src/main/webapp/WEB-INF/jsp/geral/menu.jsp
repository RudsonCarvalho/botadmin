<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<nav class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">chatbot</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="${home}"><a href="/home">Home</a></li>
					<li class="${bots}"><a href="/bots">Bots</a></li>
					<li class="${intencoes}"><a href="/intencoes">Inten&#231;&#245;es</a></li>
					<li class="${recursos}"><a href="/recursos">Recursos</a></li>
					<li class="${acessos}"><a href="/acessos">Usuários</a></li>				
				</ul>
				
				<ul class="nav navbar-nav" style="float:right !important;">					
					<li class="${sair}" data-toggle="modal" data-target="#sairModal" ><a id="item-menu-sair" href="javascript:;">Sair</a></li>
				</ul>
				
			</div>
		</div>
	</nav>

	