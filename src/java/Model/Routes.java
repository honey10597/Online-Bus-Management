/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 *
 * @author Honey
 */
@Entity
@Table(name="route")
public class Routes {
    
    @Id
    @Column(name = "routeno")
    private String routeno;
    
    @Column(name = "sno")
    @GeneratedValue
    private int sno;
    
    @Column(name = "busnumber")
    private String busnumber;
    
    @Column(name = "routename")
    private String routename;
    
    @Column(name = "drivername")
    private String drivername;
    
    @Column(name = "contactno")
    private String contactno;

    public String getRouteno() {
        return routeno;
    }

    public void setRouteno(String routeno) {
        this.routeno = routeno;
    }

    public int getSno() {
        return sno;
    }

    public void setSno(int sno) {
        this.sno = sno;
    }

    public String getBusnumber() {
        return busnumber;
    }

    public void setBusnumber(String busnumber) {
        this.busnumber = busnumber;
    }

    public String getRoutename() {
        return routename;
    }

    public void setRoutename(String routename) {
        this.routename = routename;
    }

    public String getDrivername() {
        return drivername;
    }

    public void setDrivername(String drivername) {
        this.drivername = drivername;
    }

    public String getContactno() {
        return contactno;
    }

    public void setContactno(String contactno) {
        this.contactno = contactno;
    }

    public Routes(String routeno, String busnumber, String routename, String drivername, String contactno) {
        this.routeno = routeno;
        this.busnumber = busnumber;
        this.routename = routename;
        this.drivername = drivername;
        this.contactno = contactno;
    }
    public Routes(){};
}
