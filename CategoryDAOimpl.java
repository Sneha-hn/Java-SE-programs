package com.niit.jewellarycartbackend.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.jewellarycartbackend.dao.CategoryDAO;
import com.niit.jewellarycartbackend.domain.Category;

@EnableTransactionManagement
@Repository("categoryDAO")
public class CategoryDAOimpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;
	 public CategoryDAOimpl(SessionFactory sessionFactory) {
		// TODO Auto-generated constructor stub
		 this.sessionFactory= sessionFactory;
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Transactional
	public List<Category> list() {
		try {
			String hql = "FROM Category";
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			return	query.list();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
@Transactional
	public boolean save(Category category) {
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(category);
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
		
	}

@Transactional
	public boolean update(Category category) {
		try {
			sessionFactory.getCurrentSession().update(category);
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return false;
	}

@Transactional
	public boolean delete(String id) {
		try {
			sessionFactory.getCurrentSession().delete(getCategoryByID(id));
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return false;
	}


@Transactional
	public boolean delete(Category category) {
		try {
			sessionFactory.getCurrentSession().delete(category);
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return false;
	}

@Transactional
	public Category getCategoryByID(String id) {

		  return  (Category) sessionFactory.getCurrentSession().createQuery("from Category where id = '"+id + "'").uniqueResult();
	}
	
@Transactional
public Category getCategoryByName(String name) {
		
			  return  (Category) sessionFactory.getCurrentSession().createQuery("from Category where name = '"+name + "'").list().get(0);
				

		}
	}
	
