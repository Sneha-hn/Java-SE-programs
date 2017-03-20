package com.niit.jewellarycartbackend.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.jewellarycartbackend.dao.UserDAO;
import com.niit.jewellarycartbackend.domain.User;


@Transactional
@EnableTransactionManagement
@Repository("userDAO")
public class UserDAOimpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<User> list(){
		return sessionFactory.getCurrentSession().createQuery("from User").list();
		
	}
	
	public boolean save (User user){ 
	
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(user);
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return false;
	}
		
		public boolean update(User user) {
			
				try {
					sessionFactory.getCurrentSession().createQuery("from User").list();
				} catch (HibernateException e) {
					e.printStackTrace();
				}
				return false;
		}
		
		public boolean delete (String id){
			
			try {
				sessionFactory.getCurrentSession().delete(getUserByID(id));
			} catch (HibernateException e) {
				e.printStackTrace();
			}
			return false;			
		}
		
		public boolean delete(User user) {
			try {
				sessionFactory.getCurrentSession().delete(user);
			} catch (HibernateException e) {
				e.printStackTrace();
			}
			return false;
		}

		public User getUserByID(String id) {

			  return  (User) sessionFactory.getCurrentSession().createQuery("from User where id = '"+id + "'").uniqueResult();
		}
		


		public User getUserByName(String name) {
			
			return (User) sessionFactory.getCurrentSession().createQuery("from User where name = '"+name + "'").list().get(0);
		}	
	 
}
