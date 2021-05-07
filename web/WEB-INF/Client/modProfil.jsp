<%-- 
    Document   : modProfil
    Created on : 7 mai 2021, 10:47:11
    Author     : Floriane Richard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
    <link rel="stylesheet"
        href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css"
        integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js"
        integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U"
        crossorigin="anonymous"></script>
    <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js"
        integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9"
        crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modification du profil</title>
    </head>
    <body>
        <%@include file="menu.jsp" %>
        <br>
         <div class="container ">
        <h2>Profil de ${user.nom} </h2>
       <hr> <br>
        
         <img src="img/astrocat.jpg" alt="Photo de profil">
         <br>
       
        <div class="row">
            <div class="col-sm-5">
                <br>
                Login : ${user.login}
                <br>
                E-mail : ${user.mail}
                <br>
                Conseiller : ${conseiller}              
                <br><br>
                  Description : ♪ AstroCat iz best catto ♪
            </div>
            <div class="col-sm-2"></div>

            <div class="col-sm-5">
                
                <form>
                    <div class="form-group">
                        Modification
                       <label for="Mail"> </label>
                       <input type="String" class="form-control" id="emailClient" aria-describedby="emailHelp" placeholder="Mail">
                       <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                    </div>
                    <div class="form-group">
                        <label for="mdp">Login</label>
                        <input type="String" class="form-control" id="loginCl" placeholder="Login">
                    </div>
                    <button type="submit" class="btn btn-primary">Valider les modifications</button>
                </form>
                
            </div>
            

        </div>
        
        
    </body>
</html>
