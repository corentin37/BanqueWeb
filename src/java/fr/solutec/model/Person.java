/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.model;

/**
 *
 * @author Corentin
 */
public class Person {
    private int id ;
    private String nom;
    private String login;
    private String mdp;
    
public Person(){
    
}

public Person(int id, String nom, String login, String mdp){
    this.id = id;
    this.nom = nom;
    this.login = login;
    this.mdp = mdp;
}

    public void setId(int id) {
        this.id = id;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public void setMdp(String mdp) {
        this.mdp = mdp;
    }

    public int getId() {
        return id;
    }

    public String getNom() {
        return nom;
    }

    public String getLogin() {
        return login;
    }

    public String getMdp() {
        return mdp;
    }
}
