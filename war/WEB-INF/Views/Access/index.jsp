<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.List" %>
<%@ page import ="model.entity.Access"%>	

<%
	List<Access> access = (List<Access>) request.getAttribute("access");
%>
<!DOCTYPE html>
<html>
	<head>
		<title>Usuarios</title>
		<meta charset="utf-8">
  		<meta name="viewport" content="width=device-width, initial-scale=1">
  		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>		
	</head>
	<body>
		<div class="cabeza">
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			<div class="container">
				<!-- Brand -->
				<a class="navbar-brand" href="index.html">Muebleria Kelly</a>

				<!-- Links -->
				<ul class="navbar-nav mr-auto mt-2 mt-lg-0">

					<!-- Dropdown -->
					<li class="nav-item">
						<a class="nav-link" href="">Nosotros</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="">Catalogo</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/roles">Roles</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/users">Usuarios</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/resources">Recursos</a>
					</li>
					
					<li class="nav-item">
						<a class="nav-link" href="/access">Accesos</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/product">Productos</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/proformas">Proformas</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/facturas">Factura</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/sesion/login">Login</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/sesion/logout">Logout</a>
					</li> 
				</ul>
				<div class="form-inline my-2 my-lg-0">
					<a class="btn btn-dark mr-sm-2" href="/login"><i class="far fa-user"></i> Mi Cuenta</a>
				</div>
			</div>
		</nav>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-3 p-4">
				<div class="mx-auto">
					<a class="btn btn-success" href="/access/add">Add Access</a>
				</div>
			</div>
			<div class="col-md-9 p-4">
				<h1>Access</h1>
				<%
					if(!access.isEmpty() && access.size() > 0){
				%>
				<table class="table">
					<thead>
						<tr>
							<th>id</th>
							<th>Role</th>
							<th>Resource</th>
							<th>Status</th>
							<th>Actions</th>
						</tr>
					</thead>
					<% 	
						for (int i= 0; i<access.size() ; i++){
							Access o = (Access) access.get(i);
					%>
					<tbody>
						<tr>
							<td><%= o.getId()%></td>
							<td><%= o.getIdRol()%></td>
							<td><%= o.getResource()%></td>
							<td><%= o.isStatus()%></td>
							<td>
								<span><a href="/access/view?userId=<%=o.getId()%>">View</a></span>
								<span><a href="/access/delete?userId=<%=o.getId()%>">Delete</a></span>
								<span><a href="/access/update?userId=<%=o.getId()%>">Update</a></span>
							</td>
						</tr>
					</tbody>
					<%
						}
					%>
				</table>
				<% 
					}else{
				%>
				<h4>Sin Usuarios</h4>
				<%} %>
			</div>
		</div>	
	</div>
	</body>
</html>