/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;
import java.sql.Connection; 

import java.sql.DriverManager; 

import java.sql.SQLException; 


/**
 *
 * @author Corentin
 */
public class AccessBD { 

//final signifie constante
    //on doit rajouter le driver jdbc
    protected static final String DRIVER_NAME = "com.mysql.jdbc.Driver"; 
//on doit préciser le nom de notre base de données
    protected static final String DB_NAME = "banque_trio"; 
//l'adresse de la bd est localhost car on est en local.si en distance mettre ip
    protected static final String URL = "jdbc:mysql://localhost/"+DB_NAME; 
//root peut se connecter à n'importe quel bd sur notre server.ene prod on utilise pas root, mais en dev
    protected static final String USER = "root"; 

    protected static final String PASSWORD = ""; 

     
//le static s'éxécute directement au démarrage
    static { 

        try { 
//je compte charger ce driver une seule fois et ne plus jamais le charger.le singleton est donc utilisé
            Class.forName(DRIVER_NAME).newInstance(); 

        } catch (Exception e) { 

            System.out.println("err char bd : " + e.getMessage()); 

        } 

    } 

     
//getConnection de type Connection grace a java sql connection : classe qui existe et qui nous fourni une méthode pour se connecter sur une bd
    //throw : on reporte l'exception , on ne veut pas de try catch, c'est pas ici qu'on le fera mais dans son utilisation
    
    //cette méthode me renvoi ma connection à ma bd. Faire appel à cette méthode à chaque fois que j'ai une requete à faire sur ma bd
    public static Connection getConnection() throws SQLException{ 

        return DriverManager.getConnection(URL, USER, PASSWORD); 

    } 

} 

