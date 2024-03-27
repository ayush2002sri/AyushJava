package com.springmvc.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.springmvc.Dao.Contact;
import com.springmvc.Dao.ContactDao;
@Component
public class ContactServiceImpl implements ContactService{
   @Autowired
   ContactDao contactDao;
	@Override
	public String addContact(Contact u) {
		contactDao.addContact(u);
		return "data Added";
		
	}

}
