<%-- 
    Document   : indexConseiller
    Created on : 7 mai 2021, 09:30:02
    Author     : damie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/newcss.css">
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
        <title>Page de connexion - Conseiller</title>
    </head>
    
    <body>
        <br><br>
        <div class="center">
            <img src="img/conseiller/monop.jpg" alt="conseiller" width="10%">
        </div>
        <div class="center titre">
            <h2>Conseiller bancaire</h2>
        </div>
        <div class="center mt-15">
            <form action="ConnectServlet" method="POST"> 

                <div class="zone-groupe">
                    <input type="text" placeholder="login" value="${param['login']}" class="zone-saisie" name="login" id="login" required>
                </div>
                <div class="zone-groupe">
                    <input type="password" placeholder="password" class="zone-saisie" name="password" id="password" required>
                </div>

                <button type="submit" class="bt-perso" onclick="connexion()">valider</button>
                <br>
                <p class ="text-err">${msg}</p>
            </form>
        </div>
        
    </body>
</html>
