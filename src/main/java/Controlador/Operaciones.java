package Controlador;

import java.math.BigDecimal;
import java.util.Iterator;
import java.util.List;
import javax.swing.DefaultComboBoxModel;
import javax.swing.DefaultListModel;
import javax.swing.JOptionPane;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import Modelo.*;
import org.hibernate.Query;

public class Operaciones {

    public void altas (Object objeto)
    {
        SessionFactory sesion = NewHibernateUtil.getSessionFactory();
        Session session;
        session = sesion.openSession();
        Transaction tx = session.beginTransaction();
        session.save(objeto);
        tx.commit();
        session.close();
        JOptionPane.showMessageDialog(null, "Insertado correctamente");
    }
    
    public DefaultListModel mostrarPersonas(){
        
        SessionFactory sesion = NewHibernateUtil.getSessionFactory();
        Session session = sesion.openSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("FROM Personas");
        List<Personas> lista = q.list();
        Iterator<Personas> iter = lista.iterator();
        tx.commit();
        session.close();
        DefaultListModel dlm = new DefaultListModel();
        while (iter.hasNext())
        {
            Personas persona = (Personas) iter.next();
            dlm.addElement(persona);
        }
        return dlm;
    }
    
     public DefaultListModel mostrarTareas(){
        
        SessionFactory sesion = NewHibernateUtil.getSessionFactory();
        Session session = sesion.openSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("FROM Tareas");
        List<Tareas> lista = q.list();
        Iterator<Tareas> iter = lista.iterator();
        tx.commit();
        session.close();
        DefaultListModel dlm = new DefaultListModel();
        while (iter.hasNext())
        {
            Tareas tarea = (Tareas) iter.next();
            dlm.addElement(tarea);
        }
        return dlm;
    }
    
}
