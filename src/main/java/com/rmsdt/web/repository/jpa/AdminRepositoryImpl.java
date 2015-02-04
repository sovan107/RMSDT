package com.rmsdt.web.repository.jpa;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.rmsdt.web.model.User;
import com.rmsdt.web.repository.AdminRepository;

@Repository
public class AdminRepositoryImpl implements AdminRepository {

	@PersistenceContext
	private EntityManager em;

	@Override
	public User findAdminByID(Integer id) {
		return em.find(User.class, id);
	}

	@Override
	public User findAdminByName(String name) {
		Query query = em.createQuery(
				"SELECT user FROM User user WHERE user.username=:username",
				User.class);
		query.setParameter("username", name);
		return (User) query.getSingleResult();
	}

	@Override
	public User saveAdmin(User user) {
		user = em.merge(user);
		return user;
	}
}
