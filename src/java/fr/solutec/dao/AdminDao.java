/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.model.Admin;
import fr.solutec.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Corentin
 */
public class AdminDao {
    public static User getByLoginAndPassword(String login, String mdp)throws SQLException { //on reporte l'exception encore, vérifier import java sql connection
        //on compte retourner un user à la fin
        User u = null;
        //Person est le nom de la table de la bd
        //si écrit comme ça risque de faille et piratage, donc pas de concat dans une requete sql.Il peut écrire une requete au lieu de login et mdp
        //String sql = "SELECT * FROM Person WHERE login = " + login + " AND mdp = " + mdp;
        String sql = "SELECT * FROM admin a INNER JOIN person p ON a.person_id = p.id WHERE login = ? AND password = ? ";
        
        //on va se connecter à notre bd en créant une variable de type Connection
        Connection connexion = AccessBD.getConnection();
        //on va préparer notre requete car là on a mis ?, et pour la sécurité ou utilise prepared
        PreparedStatement prepare = connexion.prepareStatement(sql);//préparer avec connection à notre bd, tjrs import java
        prepare.setString(1, login);//1 pour le 1er ?
        prepare.setString(2, mdp);//2 pour le 2eme ?
        
        //récupérer requete, éxécuter et donner un retour
        ResultSet rs = prepare.executeQuery(); //prepare est la requete que j'ai préparée, executeQuery est l'execution, on la met dans la requete préparée
        //si on rentre dans if on a bien trouvé l'utilisateur
        if (rs.next()){
            u = new User();
            u.setId(rs.getInt("id"));
            u.setNom(rs.getString("nom"));
            u.setLogin(rs.getString("login"));
            u.setMail(rs.getString("mail"));
        }
        // si u est nul la personne qui tente de se connecter n'existe pas 
        return u;
    }
}
