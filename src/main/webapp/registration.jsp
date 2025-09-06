<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title> | BEATIFY</title>
    <link rel="stylesheet" href="reg.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="wrapper">
      <div class="title-text">
        <h1>SignUp</h1>
      </div>
      <div class="form-container">

        <div class="form-inner">
        
          <form action="Musicc" method="POST">
          <div class="field">
              <input type="text" placeholder="Username" name="name" required>
            </div> 
            <div class="field">
              <input type="text" placeholder="Email Address" name="email" pattern="[a-z0-9]+@[a-z]+\.[a-z]{2,3}"  title="Please enter a valid email address" required>
            </div> 
            <div class="field">
              <input type="password" placeholder="Password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
            </div>
            <div class="pass-link"><a href="forgot.jsp">Forgot password?</a></div>
            
           	<div class="field btn">
              <div class="btn-layer"></div>
              <input type="submit" value="Signup" name="Register">
            </div>
            <div class="signup-link">already registered? <a href="login.jsp">Login</a></div>
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