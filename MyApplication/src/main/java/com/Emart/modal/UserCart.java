package com.Emart.modal;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "usercart")
public class UserCart {
	
	@Id
	private int productId;
	private int userId;
	private int price;
	private int count;

}
