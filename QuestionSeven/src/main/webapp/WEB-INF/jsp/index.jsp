<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h3>User Registration</h3>
<br>
<form action='/index/add' method='post'>
 
    <table>
 
        <tr>
            <td><b>Name</b></td> 
            <td><input type='text' name='name' class='form-control'  required/></td>
        </tr>
 
        <tr>
            <td><b>Surname</b></td>
            <td><input type='text' name='surname' class='form-control' required /></td>
        </tr>
 
        <tr>
            <td><b>Adress</b></td>
            <td><input type='text' name='adress' class='form-control' size="20" required/></td>
            
        </tr>
 
 
        <tr>
            <td></td>
            <td>
                <button type="submit" class="btn btn-primary">Register</button>
            </td>
        </tr>
 
    </table>
    <b><c:out value="${danger}"></c:out></b>
</form>



<h3>List Of Users</h3>
<br>
<table class="table table-hover">

    <thead>
      <tr>
        <th><b>User Name</b></th>
        <th><b>User Surname</b></th>
        <th><b>User Adress</b></th>
        <th><b>Transactions</b></th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="umanh">
      <tr>
        <td><c:out value="${umanh.name}"></c:out></td>
        <td><c:out value="${umanh.surname}"></c:out></td>
        <td><c:out value="${umanh.adress}"></c:out></td>

			 <td>
             <a href="/index/${umanh.id}/edit">
                <button type="submit" class="btn btn-primary">Edit User</button>
                </a>
            </td>
            <td>
             <a href="/index/${umanh.id}/delete">
                <button type="submit" class="btn btn-primary">Delete User</button>
                </a>
            </td>
      </tr>

          </c:forEach>
    </tbody>
  </table>
</div>

