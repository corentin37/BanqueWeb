<%-- 
    Document   : indexUser
    Created on : 7 mai 2021, 09:29:49
    Author     : damie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Connexion Client</title>
        <link rel="stylesheet" href="newcss.css">
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
    </head>
    <body>
        <br>
        <h3 class="text-center mt-100">Connexion Client</h3>
        <div class="text-center "> 
        <img src="img/coclient.jpg" alt="Img connexion" >
        <form action="loginUser" method="POST" > 
            <br> 
            <div class="zone-groupe ">
                <input type="text" placeholder="Login" value="${param['login']}" class="zone-saisie" name="login" id="login" required>
            </div>
            <br>
            <div class="zone-groupe">
                <input type="password" placeholder="Password" class="zone-saisie" name="password" id="password" required>
            </div>
            <br>
            <button type="submit" class="bt-perso" onclick="connexion()">Valider</button>
            <br>
            <p class ="text-err">${msg}</p>
        </form>
        </div>
        
        
    </body>
</html>
