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
public class Admin {
    private User person;
    private int person_id;

    public Admin() {
    }

    public Admin(User person, int person_id) {
        this.person = person;
        this.person_id = person_id;
    }

    public User getPerson() {
        return person;
    }

    public int getPerson_id() {
        return person_id;
    }

    public void setPerson(User person) {
        this.person = person;
    }

    public void setPerson_id(int person_id) {
        this.person_id = person_id;
    }

}