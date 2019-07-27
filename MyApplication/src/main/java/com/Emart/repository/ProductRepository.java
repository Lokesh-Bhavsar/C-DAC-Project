package com.Emart.repository;

import org.springframework.data.repository.CrudRepository;

import com.Emart.modal.Product;

public interface ProductRepository extends CrudRepository<Product, Integer> {

}