/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.model.Compte;
import fr.solutec.model.User;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Floriane Richard
 */
public class CompteDao {
    
public static List<Compte> getAllComptes()throws SQLException {    
        List<Compte> comptes = new ArrayList<>(); 
        String sql = "SELECT * FROM compte";
        Connection connexion = AccessBD.getConnection();
        Statement statement = connexion.createStatement();//préparer avec connection à notre bd, tjrs import java
          ResultSet rs = statement.executeQuery(sql); 
        while (rs.next()){
            Compte c = new Compte();
            c.setIdcompte(rs.getInt("idcompte"));
            c.setSolde(rs.getDouble("solde"));
            c.setConseiller_person_id(rs.getInt("conseiller_person_id"));
            c.setClient_person_id(rs.getInt("client_person_id"));
    
            comptes.add(c);
        }
        // si u est nul la personne qui tente de se connecter n'existe pas 
        return comptes;
    }
public static Compte getOneCompte(User u) throws SQLException{
    Compte c = new Compte();
    List<Compte> comptes = getAllComptes();
    for (Compte comp :comptes) {
        if(u.getId()==comp.getClient_person_id()){
            c=comp;
    }}
    return c;
}

}
