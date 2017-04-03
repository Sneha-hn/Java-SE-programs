package com.niit.jewellarycartbackend.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.jewellarycartbackend.dao.ProductDAO;
import com.niit.jewellarycartbackend.domain.Product;

@Transactional
@EnableTransactionManagement
@Repository("productDAO")
public  class ProductDAOimpl implements ProductDAO{
	
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<Product> list(){
		try {
			String hql = "FROM Product";
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			return	query.list();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
	
	public boolean save (Product product){ 
	
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(product);
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return false;
	}
		
		public boolean update(Product product) {
			
				try {
					sessionFactory.getCurrentSession().createQuery("from Product").list();
				} catch (HibernateException e) {
					e.printStackTrace();
				}
				return false;
		}
		
		public boolean delete (String id){
			
			try {
				sessionFactory.getCurrentSession().delete(getProductByID(id));
			} catch (HibernateException e) {
				e.printStackTrace();
			}
			return false;			
		}
		
		public boolean delete(Product product) {
			try {
				sessionFactory.getCurrentSession().delete(product);
			} catch (HibernateException e) {
				e.printStackTrace();
			}
			return false;
		}

		public Product getProductByID(String id) {

			  return  (Product) sessionFactory.getCurrentSession().createQuery("from Product where id = '"+id + "'").uniqueResult();
		}
		


		public Product getProductByName(String name) {
			
			return (Product) sessionFactory.getCurrentSession().createQuery("from Product where name = '"+name + "'").list().get(0);
		}		
	}
	

