package com.wildcodeschool.wildmotorstore.repository;

import com.wildcodeschool.wildmotorstore.entity.Purchase;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PurchaseRepository extends JpaRepository<Purchase, Long> {
}
