<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
    <link
      href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
      rel="stylesheet"
    />
  </head>
  <body>
    <%@ include file="common/nav.jspf" %>

    <div class="container">
      <h1>Welcome to the login page!</h1>
      <form method="post">
        <label for="name">Username</label>
        <input type="text" name="name" />
        <label for="password">Password</label>
        <input type="password" name="password" />
        <input type="submit" class="btn btn-success" />
      </form>
    </div>

    <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    <script src="webjars/jquery/3.6.0/jquery.min.js"></script>
  </body>
</html>
