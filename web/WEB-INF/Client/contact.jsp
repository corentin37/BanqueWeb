<%-- 
    Document   : contact
    Created on : 7 mai 2021, 10:47:05
    Author     : Floriane Richard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact</title>
    </head>
    <body>
        <%@include file="menu.jsp" %>
        
        <h3> Espace de contact conseiller!</h3>
        <div class="container">
            
           <form action="contact" method="POST">
                            <div class="form-group">
                                <input type="text" name="info" class="form-control">
                            </div>
                            <button type="submit" class="btn btn-primary btn-block">valider</button>
                        </form>
            
            
            <label for="message">Contact : </label>
        <form action="contact" method="POST">
            <textarea id="mess" name="mess" rows="4" cols="50" placeholder="Saisir votre message">
            
            </textarea>
            <button type="submit" class="bt-perso" >Envoyer</button>
            
            
        </form>
        
        <div>
            <h4>Historique :</h4>
            ${messages}
           <c:forEach var="n" items="${messages}">
               <div class="card card-shadow">
                   <div class="card-body">
                       ${n};
                       <br>
                   </div>
               </div>
           </c:forEach> 
        </div>
        </div>
        
           
        
        
        
        
        
        
    </body>
</html>
