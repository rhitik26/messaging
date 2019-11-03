<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!--
Author: Colorlib
Author URL: https://colorlib.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>SignUp Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!-- Custom Theme files -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet" href="registerstyle.css">
<!-- //web font -->
</head>
<body>
	<!-- main -->
	<div class="container">
  <div class="row valign-wrapper">
    <div class="col s6 offset-s3 valign">
      <div class="card blue-grey darken-1">
        <div class="card-content white-text">
          <span class="card-title">Login Form</span>
          <form action="signup.do" method="post" novalidate id="registerForm">
          <div class="row">
        <div class="input-field col s6">
          <input  id="first_name" type="text" class="validate" name="firstName">
          <label for="first_name">First Name</label>
        </div>
        <div class="input-field col s6">
          <input id="last_name" type="text" class="validate" name="lastName">
          <label for="last_name">Last Name</label>
        </div>
      </div>
         <div class="row">
        <div class="input-field col s12">
          <input id="email" type="email" class="validate" name="email">
          <label for="email">Email</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="password" type="password" class="validate" name="password">
          <label for="password">Password</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="password" type="password" class="validate" name="confirmPassword">
          <label for="password">Retype Password</label>
        </div>
      </div>
       <button class="btn waves-effect waves-light" type="submit" name="action">Submit
   
  </button>
        </div>
        <div class="card-action">
         Already a member  &nbsp &nbsp <a href="login.jsp">Login Here</a>
        </div>
        </form>
      </div>
    </div>
  </div>
</div>
	<!-- //main -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>


	<script
		src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/jquery.validate.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/additional-methods.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
	<script>
	$("#registerForm").validate({
        rules: {
                       firstName: { required: true ,lettersonly: true},
                       lastName: { required: true,lettersonly: true },
                       email: { required: true, email: true },
                       password: { required: true, minlength: 4 },
                       confirmPassword: { required: true, equalTo: "#password", minlength: 4  },
        },
        messages: {
                       firstName: { required: "First name is required",lettersonly: "First name can have only letters" },
                       lastName: { required: "Last name is required",lettersonly: "last name can have only letters"  },
                       email: { required: "Email is required", email: "Email should be in someone@domain.com" },
                       password: { required: "Password is mandatory", minlength: "Password must be minimum 4 charecters long." },
                       confirmPassword: { required: "Password confirmation is mandatory", equalTo: "Passwords do not match", minlength: "Password must be minimum 4 charecters long." },
        },
        errorElement: 'div',
});

	</script>
	
</body>

</html>