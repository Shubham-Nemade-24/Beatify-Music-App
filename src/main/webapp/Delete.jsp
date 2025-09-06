<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="logstyle.css">
<title>Delete my account</title>
</head>
<body>
	<div class="wrapper">
      <div class="title-text">
        <h2>Delete an account</h2>
      </div>
      <div class="form-container">
        <div class="form-inner">
          <form action="Delete" method="POST">
          <div class="field">
              <input type="text" placeholder="Username" name="name" required>
            </div> 
            <div class="field">
              <input type="text" placeholder="Email Address" name="email" required>
            </div> 
            <div class="field">
              <input type="password" placeholder="Password" name="password" required>
            </div>
            <div class="pass-link"><a href="forgot.jsp">Forgot password?</a></div>
            
           	<div class="field btn">
              <div class="btn-layer"></div>
              <input type="submit" value="Delete" name="Delete">
            </div>
            <div class="signup-link"><a href="registration.jsp">Register now</a></div>
          </form>
        </div>
      </div>
    </div>

    <script>
      const loginText = document.querySelector(".title-text .login");
      const loginForm = document.querySelector("form.login");
      const loginBtn = document.querySelector("label.login");
      const signupBtn = document.querySelector("label.signup");
      const signupLink = document.querySelector("form .signup-link a");
      signupBtn.onclick = (()=>{
        loginForm.style.marginLeft = "-50%";
        loginText.style.marginLeft = "-50%";
      });
      loginBtn.onclick = (()=>{
        loginForm.style.marginLeft = "0%";
        loginText.style.marginLeft = "0%";
      });
      signupLink.onclick = (()=>{
        signupBtn.click();
        return false;
      });
    </script>
  </body>
</html>