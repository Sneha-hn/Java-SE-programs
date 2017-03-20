package com.niit.jewellarycartbackend.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.jewellarycartbackend.dao.My_CartDAO;
import com.niit.jewellarycartbackend.domain.My_Cart;

@Transactional
@EnableTransactionManagement
@Repository("my_cartDAO")
public class My_CartDAOimpl implements My_CartDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<My_Cart> list(){
		return sessionFactory.getCurrentSession().createQuery("from My_Cart").list();
		
	}
	@Transactional
	public boolean save (My_Cart my_cart){ 
	
		try {
			sessionFactory.getCurrentSession().save (my_cart);
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return false;
	}
		
	@Transactional
		public boolean update(My_Cart my_cart) {
			
				try {
					sessionFactory.getCurrentSession().createQuery("from My_Cart").list();
				} catch (HibernateException e) {
					e.printStackTrace();
				}
				return false;
		}
		
	@Transactional
		public boolean delete (String id){
			
			try {
				sessionFactory.getCurrentSession().delete(getMy_CartByID(id));
			} catch (HibernateException e) {
				e.printStackTrace();
			}
			return false;			
		}
		
	@Transactional
		public boolean delete(My_Cart my_cart) {
			try {
				sessionFactory.getCurrentSession().delete(my_cart);
			} catch (HibernateException e) {
				e.printStackTrace();
			}
			return false;
		}
		
	@Transactional
		public My_Cart getMy_CartByID(String id) {

			  return  (My_Cart) sessionFactory.getCurrentSession().createQuery("from My_Cart where id = '"+id + "'").uniqueResult();
		}
		

		@Transactional
		public My_Cart getMy_CartByName(String name) {
			
			return (My_Cart) sessionFactory.getCurrentSession().createQuery("from My_Cart where name = '"+name + "'").list().get(0);
		}	
	 
}


