package com.vcube.inventory.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vcube.inventory.dao.ProductDAO;
import com.vcube.inventory.model.Product;

@Service
public class ProductService {

	@Autowired
	ProductDAO productDao;
	
	public int saveProduct(Product product)
	{
		return productDao.saveProduct(product);
	}
	
	public List<Product> getAllProducts()
	{
		return productDao.getAllProducts();
	}
	
}
