package com.catchup.app.model.dao.imps;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.catchup.app.model.dao.interfaces.CaughtBookDAO;
import com.catchup.app.model.items.CaughtBook;

@Repository
public class CaughtBookDAOImp implements CaughtBookDAO {
	private SessionFactory factory;

	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}

	@Override
	public void addCaughtBook(CaughtBook caughtBook) {
		Session session = factory.getCurrentSession();
		session.persist(caughtBook);
		
	}

	@Override
	public CaughtBook searchCaughtBookByID(int bid) {
		Session session = factory.getCurrentSession();
		return (CaughtBook) session.get(CaughtBook.class, new Integer (bid) );
	}

	@Override
	public void updateCaughtBook(CaughtBook caughtBook) {
		Session session = factory.getCurrentSession();
		session.update(caughtBook);
	}

	@Override
	public void deleteCaughtBook(int bid) {
		Session session = factory.getCurrentSession();
		CaughtBook caughtBook = (CaughtBook) session.get(CaughtBook.class, new Integer(bid));
		
		if(caughtBook != null){
			session.delete(caughtBook);
		}
		
	}

}