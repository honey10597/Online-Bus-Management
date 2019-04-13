/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Honey
 */
public class signupdate {
    
    public void update(String name,String email,String password,String user)
    {
        user u = new user();
        
        u.setName(name);
        u.setEmail(email);
        u.setPassword(password);
        u.setUser(user);
        
        Configuration cf = null;
        
        SessionFactory sf = null;
        
        Session session = null;
        
        try{
            cf = new Configuration();
            
            cf.configure("hibercfg/hibernate.cfg.xml");
            
            sf = cf.buildSessionFactory();
            
            session = sf.openSession();
            
            Transaction tx = session.beginTransaction();
            
            session.save(u);
            
            tx.commit();
             
            session.close();
            
            sf.close(); 
        
        }catch(HibernateException exp)
        {
            exp.printStackTrace();
        }
        
    }
}
