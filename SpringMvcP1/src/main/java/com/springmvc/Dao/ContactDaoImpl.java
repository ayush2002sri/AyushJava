package com.springmvc.Dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
public class ContactDaoImpl implements ContactDao {
	/*
	 * @Autowired
	 * 
	 * 	 * LocalSessionFactoryBean bean;
	 */
	@Autowired
	SessionFactory fact;

	@Override
	@Transactional
	public String addContact(Contact contact) {
//	  SessionFactory fact= bean.getObject();
//	  Session session=fact.openSession();
//	  Transaction t=session.beginTransaction();
//	  System.out.println("Dao Called ");
//	  session.save(contact);
//	  t.commit();
//	  System.out.println(fact);	  
//	  session.close();
//	  fact.getCurrentSession().save(contact);
		Session session = fact.openSession();
		Transaction t = session.beginTransaction();
		System.out.println("Dao Called ");
		session.save(contact);
		t.commit();
		System.out.println(fact);
		session.close();
		return "Data Added";
	}

}
