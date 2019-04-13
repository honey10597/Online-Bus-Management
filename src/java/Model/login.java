/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author Honey
 */

@Entity
public class login {
    
    @Id
    private String email;
    private String password;
    private String user;
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }
    
    public boolean equals(Object o)
    {
        login l = (login) o;
        
        if( (this.email.equals(l.getEmail())) && (this.password.equals(l.getPassword())) && (this.user.equals(l.getUser())) )
           return true;
        else 
            return false;
    }
}
