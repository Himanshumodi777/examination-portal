<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Login Form</title>
  
  
  <link rel='stylesheet prefetch' href="css/bootstrap.min.css">

      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>

    <div class="wrapper">
        <form class="form-signin" action="studentlogin.jsp" >       
      <h2 class="form-signin-heading">Please login</h2>
      <input type="text" class="form-control" name="id" placeholder="Enrollment Id" required="" autofocus="" />
      <input type="password" class="form-control" name="pass" placeholder="Password" required=""/>      
      <label class="checkbox">
        <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
      </label>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button> 
      <tr><th colspan='2'><a href="studentrecover.jsp">Forget password?</a></th></tr>
				<tr><th colspan='2'><a href="studentsignup.html">Register</a></th>
			</tr>  
    </form>
  </div>
  
  

</body>

</html>
