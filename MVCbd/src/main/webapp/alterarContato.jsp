<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Alteração do contato ${contato.nome}</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
	crossorigin="anonymous"></script>

</head>
<body>

	<div class="container">
		<h3>Alteração do contato: ${contato.nome}</h3>
		<form action="editar" method="post" class="form-control">
			<p>ID: <input type="text" readonly name="id" class='text-danger' value="${contato.id}"></p>
			
			<p>Nome: <input type="text" name="nome" value="${contato.nome}"></p>
					
			
			<p>Idade: <input type="number" name="idade" value="${contato.idade}"></p>
			
			<button type="submit" class="btn btn-success">Atualizar</button>
		</form>
	</div>
</body>
</html>