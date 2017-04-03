package com.niit.jewellarycartbackend.dao;

import java.util.List;

import com.niit.jewellarycartbackend.domain.Cart;

public interface CartDAO {

	  //addcart method initialization
	  public void addCart(Cart cart);
	  // delete cart method initialization
	  public void deleteCart(int id);
	  //getcart method initialization
	  public Cart getCart(String p_id);
	 
	  public List<Cart> list();
	  public List<Cart> userCartList(String uname);
	  


}
