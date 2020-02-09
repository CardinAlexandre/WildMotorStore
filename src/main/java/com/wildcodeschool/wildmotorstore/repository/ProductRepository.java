package com.wildcodeschool.wildmotorstore.repository;

import com.wildcodeschool.wildmotorstore.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
}
