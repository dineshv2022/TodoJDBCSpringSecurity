<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Welcome</title>
    <link
      href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
      rel="stylesheet"
    />
  </head>
  <body>
    <%@ include file="common/nav.jspf" %>

    <div class="container">
      <div>Welcome to Dinesh's Todo's App</div>
      <div>Your Name: ${name}</div>
      <h3>
        To Manage your <a href="list-todos" class="btn btn-success"> todos</a>
      </h3>
    </div>

    <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    <script src="webjars/jquery/3.6.0/jquery.min.js"></script>
  </body>
</html>
