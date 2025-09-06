<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title> | BEATIFY</title>
    <link rel="stylesheet" href="logstyle.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="wrapper">
      <div class="title-text">
        <h1>Login</h1>
      </div>
      <div class="form-container">
        <div class="form-inner">
          <form action="Administrator" method="POST">
          <div class="field">
              <input type="text" placeholder="Admin name" name="name" required>
            </div> 
            <div class="field">
              <input type="text" placeholder="Email Address" name="email" required>
            </div> 
            <div class="field">
              <input type="password" placeholder="Password" name="password" required>
            </div>          
           	<div class="field btn">
              <div class="btn-layer"></div>
              <input type="submit" value="Login" name="Login">
            </div>
            <div class="signup-link">not an administrator?
            <a href="registration.jsp">Register</a></div>
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