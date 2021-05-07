<%-- 
    Document   : home
    Created on : 6 mai 2021, 16:35:29
    Author     : Corentin
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
        <title>Accueil Client</title>
    </head>
    <body>
        <%@include file="menu.jsp" %>
        <br>
        <div class="container"> 
            
            <h3>Bienvenue ${nomClient} </h3>
            <hr>
            <br>
            <div class="row">
                <div class="col-sm-5">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="img/moneyhome.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Consultez vos comptes</h5>
                            <p class="card-text">Pensez à vous enrichir en faisant des placements intéressants!</p>
                            <a href="compte" class="btn btn-primary">-> Compte</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-2"></div> 
                <div class="col-sm-5">
                    <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="img/mail.jpg" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">Contactez votre conseiller</h5>
                                <p class="card-text">Des demandes spécifiques, un problème... ou un petit mot doux !</p>
                                <a href="compte" class="btn btn-primary">-> Contact</a>
                            </div>
                    </div>
                </div>
                
                
            </div>
            
        </div>
        
        
        
    </body>
</html>
