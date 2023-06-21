<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recetas</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
	
	
	<!-- Contenedor -->
	<div class="container">

	
	<!-- Pills content -->
	<div class="tab-content">
	  <div class="tab-pane fade show active" id="pills-login" role="tabpanel" aria-labelledby="tab-login">
	    <form action="login/LoginUser.jsp" method="post">
	      <div class="text-center mb-3">
	        <p>Recuperación Jsp</p>

	      </div>
	
	      <!-- Email input -->
	      <div class="form-outline mb-4">
	        <input type="text" id="username" name="username" class="form-control" required="required"/>
	        <label class="form-label" for="username">Nombre de usuario</label>
	      </div>
	
	      <!-- Password input -->
	      <div class="form-outline mb-4">
	        <input type="password" id="password" name="password" class="form-control" required="required" />
	        <label class="form-label" for="password">Password</label>
	      </div>
	
	     
	      <!-- Submit button -->
	      <button type="submit" class="btn btn-primary btn-block mb-4">Sign in</button>
	
	     </form>
	  </div>
	
	</div>
	</div>

	

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

</body>
</html>