package com.vcube.inventory.dao;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.vcube.inventory.model.Product;

public class ProductDAO {

	//This object helps us execute SQL queries without manually writing JDBC boilerplate code such as
	//DriverManager,Connection,PreparedStatement,ResultSet,Closing Connection
	private JdbcTemplate jdbcTemplate;
	
	  // Setter injection
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate)
	{
		this.jdbcTemplate=jdbcTemplate;
	}
	
	 // Insert product into database
	public int saveProduct(Product product)
	{
		String sql="insert into Products(product_name, category, price, quantity, description)VALUES (?, ?, ?, ?, ?)";
		
		int result=jdbcTemplate.update(sql,product.getProductName(),product.getCategory(),product.getPrice(),product.getQuantity(),product.getDescription());
		
		return result;
	}
	
	public List<Product> getAllProducts()
	{
		String sql="select * from products";
		//BeanPropertyRowMapper automatically maps database column names to Java properties. 
		//For example, product_id maps to productId.
		List<Product> products=jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Product.class));
		
		return products;
	}
}
