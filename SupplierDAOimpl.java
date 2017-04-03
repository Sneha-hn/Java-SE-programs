package com.niit.jewellarycartbackend.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.jewellarycartbackend.dao.SupplierDAO;
import com.niit.jewellarycartbackend.domain.Supplier;



@Transactional
@EnableTransactionManagement
@Repository("supplierDAO")
public class SupplierDAOimpl implements SupplierDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<Supplier> list(){
		try {
			String hql = "FROM Supplier";
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			return	query.list();
		} 
		catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
	
	public boolean save (Supplier supplier){ 
	
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(supplier);
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return false;
	}
		
		public boolean update(Supplier supplier) {
			
				try {
					sessionFactory.getCurrentSession().createQuery("from Supplier").list();
				} catch (HibernateException e) {
					e.printStackTrace();
				}
				return false;
		}
		
		public boolean delete (String id){
			
			try {
				sessionFactory.getCurrentSession().delete(getSupplierByID(id));
			} catch (HibernateException e) {
				e.printStackTrace();
			}
			return false;			
		}
		
		public boolean delete(Supplier supplier) {
			try {
				sessionFactory.getCurrentSession().delete(supplier);
			} catch (HibernateException e) {
				e.printStackTrace();
			}
			return false;
		}

		public Supplier getSupplierByID(String id) {

			  return  (Supplier) sessionFactory.getCurrentSession().createQuery("from Supplier where id = '"+id + "'").uniqueResult();
		}
		


		public Supplier getSupplierByName(String name) {
			
			return (Supplier) sessionFactory.getCurrentSession().createQuery("from Supplier where name = '"+name + "'").list().get(0);
		}		
	

}
