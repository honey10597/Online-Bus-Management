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
public class RoutesDAO {
    
    public void enter(String routeno,String busnumber,String routename,String drivername,String contactnumber)
    {
        
        Routes rt = new Routes();
        
        rt.setRouteno(routeno);
        rt.setBusnumber(busnumber);
        rt.setRoutename(routename);
        rt.setDrivername(drivername);
        rt.setContactno(contactnumber);
        
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;

        try{
            cf = new Configuration();
            cf.configure("hibercfg/hibernate.cfg.xml");
            sf = cf.buildSessionFactory();
            session = sf.openSession();
            Transaction tx = session.beginTransaction();
            session.save(rt);
            tx.commit();
            session.close();
            sf.close();
        }catch(HibernateException exp)
        {
            exp.printStackTrace();
        }
    }
    
}
