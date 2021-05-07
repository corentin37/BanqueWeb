<%-- 
    Document   : modProfil
    Created on : 7 mai 2021, 10:47:11
    Author     : Floriane Richard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modification du profil</title>
    </head>
    <body>
        <%@include file="menu.jsp" %>
        
        <form>
  <div class="form-group">
    <label for="exampleInputEmail1">Adresse Email</label>
    <input type="email" class="form-control" id="emailClient" aria-describedby="emailHelp" placeholder="Mail">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
        
    </body>
</html>
