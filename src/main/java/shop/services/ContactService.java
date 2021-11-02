package shop.services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;

import shop.entities.Contact;

@Service
public class ContactService extends BaseService<Contact> {

	@PersistenceContext
	EntityManager entityManager;

	@Override
	protected EntityManager em() {

		return entityManager;
	}

	@Override
	protected Class<Contact> clazz() {
		// TODO Auto-generated method stub
		return Contact.class;
	}

}
