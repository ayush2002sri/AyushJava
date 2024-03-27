package com.springmvc.Service;

import org.springframework.stereotype.Component;

import com.springmvc.Dao.Contact;
import com.springmvc.entity.User;

public interface ContactService {
  public String addContact(Contact u);
}
