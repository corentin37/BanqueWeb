<%-- 
    Document   : indexAdmin
    Created on : 7 mai 2021, 09:30:14
    Author     : damie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <link rel="stylesheet" href="CSS/newcss.css">
    </head>
    <body>
        <!--<div class="center mt-100">
        <div>
        <img src="img/image.jpg" alt="" width="15%" class="img">
       </div>
        <div>
            <h2 class ="titre-perso">Dev-1-2021</h2>
        </div>-->
        </div>
        <!-- l'action doit être un url patterns, ça doit renvoyer à une servlet et on va chercher la méthode(POST ici) de cette servlet et ça va exécuter cette méthode quand on cliquera sur le boutton
        dans ce do post on va pouvoir récupérer les infos saisie de ce formulaire-->
            <form action="loginAdmin" method="POST">
                <div class="zone-group">
                    <input type="text" placeholder="login"  value="${param['login']}" class="form-control" id = "login" name="login" required><!-- le $ param pour éviter que la saisie se vide en cas de mauvais mdp et bon id-->
            </div>
            <div class="zone-group">
                <input type="password" placeholder="password" class="form-control" id="password" name="password" required>
            </div>
            <button type="submit" class="btn btn-primary btn-block">valider</button><!--rajouter le type submit-->
            <br>
            <p class="text-erreur"> ${msg}</p> <!-- message d'erreur si mdp incorrect-->
            </form>
            
            <p class="text-erreur" id="msg-erreur"></p>
        </div>
    </body>
</html>
