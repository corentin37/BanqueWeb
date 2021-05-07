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
        <title>JSP Page</title>
    </head>
    <body>
        <form action="login" method="POST"> 
        
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
    </body>
</html>
