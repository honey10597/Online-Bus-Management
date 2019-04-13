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
public class loginDAO {
    String name;
    public boolean validate(login check)
    {
        login ld = null;
                
        Configuration cf = null;
        
        SessionFactory sf = null;
        
        Session session = null;
        
        try{
            
            cf = new Configuration();
            
            cf.configure("hibercfg/hibernate.cfg.xml");
            
            sf = cf.buildSessionFactory();
            
            session = sf.openSession();
            
            Transaction tx = session.beginTransaction();
            
            ld = (login)session.get(login.class,check.getEmail());
                    
            if(ld != null)
            name = ld.getName();
            
            tx.commit();
            
            session.close();
            
            sf.close();
            
            if(ld == null)
            {
                return false;
            }else{
               return check.equals(ld);
            }
            
        }catch(HibernateException ex){
            ex.printStackTrace();
        }
        
        return false;
    }
  public String getN()
  {
      return name;
  }
}
