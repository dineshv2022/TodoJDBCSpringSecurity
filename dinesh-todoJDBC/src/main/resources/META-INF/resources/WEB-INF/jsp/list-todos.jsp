<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Todo's</title>
    <link
      href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
      rel="stylesheet"
    />
  </head>
  <body>
    <%@ include file="common/nav.jspf" %>
    <div class="container">
      <h1>Your Todos</h1>
      <table class="table table-stripped">
        <thead>
          <tr>
            <th>Description</th>
            <th>Target Date</th>
            <th>Is Done?</th>
            <th colspan="2">Actions</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach items="${todos}" var="todo">
            <tr>
              <td>${todo.description}</td>
              <td>${todo.targetDate}</td>
              <td>${todo.done}</td>
              <td>
                <a href="delete-todo?id=${todo.id}" class="btn btn-warning"
                  >Delete</a
                >
              </td>
              <td>
                <a href="update-todo?id=${todo.id}" class="btn btn-success"
                  >Update</a
                >
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
      <a href="add-todo" class="btn btn-success">Add todo</a>
    </div>

    <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    <script src="webjars/jquery/3.6.0/jquery.min.js"></script>
  </body>
</html>
