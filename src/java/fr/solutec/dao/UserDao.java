
package fr.solutec.dao;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.*;
import fr.solutec.model.User;
import java.util.List;
import java.sql.SQLException;
import java.util.ArrayList;
/**
 *
 * @author Corentin
 */
public class UserDao {
    
    //voir si id et mdp existe dans la bd. Importer le model user
    public static User getByLoginAndPassword(String login, String mdp)throws SQLException { //on reporte l'exception encore, vérifier import java sql connection
        //on compte retourner un user à la fin
        User u = null;
        //Person est le nom de la table de la bd
        //si écrit comme ça risque de faille et piratage, donc pas de concat dans une requete sql.Il peut écrire une requete au lieu de login et mdp
        //String sql = "SELECT * FROM Person WHERE login = " + login + " AND mdp = " + mdp;
        String sql = "SELECT * FROM person WHERE login = ? AND password = ? ";
        
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
    public static void insert (String nom, String login, String password, String mail)throws SQLException{
        //pas de resultset car on fait un insert
        String sql = "INSERT INTO person (nom, login, password, mail) VALUES (?, ?, ?, ?)";
            Connection connexion = AccessBD.getConnection();
            PreparedStatement prepare = connexion.prepareStatement(sql);
            prepare.setString(1, nom);
            prepare.setString(2, login);
            prepare.setString(3, password);      
            prepare.setString(4, mail);

            prepare.execute();
    }
    
     public static void modify (String nom, String login, String password)throws SQLException{
        //pas de resultset car on fait un insert
        String sql = "MODIFY INTO person (nom, login, password) VALUES (?, ?, ?)";
            Connection connexion = AccessBD.getConnection();
            PreparedStatement prepare = connexion.prepareStatement(sql);
            prepare.setString(1, nom);
            prepare.setString(2, login);
            prepare.setString(3, password);      
            prepare.execute();
    }

public static List<User> getAllPerson()throws SQLException { 
       
        List<User> users = new ArrayList<>();
        
        String sql = "SELECT * FROM person";
        
        
        Connection connexion = AccessBD.getConnection();
       
        Statement statement = connexion.createStatement();//préparer avec connection à notre bd, tjrs import java
        
        ResultSet rs = statement.executeQuery(sql); 
      
        while (rs.next()){
            User u = new User();
            u.setId(rs.getInt("id"));
            u.setNom(rs.getString("nom"));
            u.setLogin(rs.getString("login"));
            u.setMail(rs.getString("mail"));
            
            users.add(u);
        }
        // si u est nul la personne qui tente de se connecter n'existe pas 
        return users;
    }}
/*public static void insert(User u) throws SQLException {
    String sql = "INSERT INTO person(nom, login, mdr) VALUES (?,?,?)";

    Connection connexion = AccessBD.getConnection();
    PreparedStatement prepare = connexion.prepareStatement(sql);
    prepare.setString(1, u.getNom());
    prepare.setString(2, u.getLogin());
    prepare.setString(3, u.getMdp());
    
    prepare.execute();
}}*/
