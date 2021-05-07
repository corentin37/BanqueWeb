/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.model;

/**
 *
 * @author Floriane Richard
 */
public class Compte {
    private int idcompte;
    private double solde;
    private int client_person_id;
    private int conseiller_person_id;
    	public int getIdcompte() {
			return idcompte;
		}
		public void setIdcompte(int idcompte) {
			this.idcompte = idcompte;
		}
		public double getSolde() {
			return solde;
		}
		public void setSolde(double solde) {
			this.solde = solde;
		}
		public int getClient_person_id() {
			return client_person_id;
		}
		public void setClient_person_id(int client_person_id) {
			this.client_person_id = client_person_id;
		}
		public int getConseiller_person_id() {
			return conseiller_person_id;
		}
		public void setConseiller_person_id(int conseiller_person_id) {
			this.conseiller_person_id = conseiller_person_id;
		}
		public Compte(int idcompte, double solde, int client_person_id, int conseiller_person_id) {
			super();
			this.idcompte = idcompte;
			this.solde = solde;
			this.client_person_id = client_person_id;
			this.conseiller_person_id = conseiller_person_id;
		}
		public Compte() {
			super();
		}
	    
	    
	    
    
}
