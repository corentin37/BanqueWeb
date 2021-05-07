<%-- 
    Document   : creerConseiller
    Created on : 7 mai 2021, 11:52:05
    Author     : Corentin
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
        <link rel="stylesheet" href="css/newcss.css">
    </head>
    <body>
        <br>
        <br>
        <div class="center">
            <h1>Créer un profil conseiller</h1>
        </div>
        <br>
        <br>
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
            <form action="creerConseiller" method="POST">
                <div class="zone-group">
                    <input type="text" placeholder="name" class="form-control" id = "nom" name="nom" required><!-- le $ param pour éviter que la saisie se vide en cas de mauvais mdp et bon id-->
            </div>
            <div class="zone-group">
                <input type="int" placeholder="login" class="form-control" id="id" name="id" required>
            </div>
            <div class="zone-group">
                <input type="text" placeholder="password" class="form-control" id="motPasse" name="motPasse" required>
            </div>
            <div class="zone-group">
                <input type="text" placeholder="email" class="form-control" id="email" name="email" required>
            </div>
            <button type="submit" class="btn btn-primary btn-block">valider</button><!--rajouter le type submit-->
            <br>
            <p class="text-erreur"> ${msg}</p> <!-- message d'erreur si mdp incorrect-->
            </form>
            
            <p class="text-erreur" id="msg-erreur"></p>
            </div>
            <div class="col-sm-4"></div>
        </div>
    </body>
</html>
