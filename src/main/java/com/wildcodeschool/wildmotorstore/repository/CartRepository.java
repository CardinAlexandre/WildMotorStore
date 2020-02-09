package com.wildcodeschool.wildmotorstore.repository;

import com.wildcodeschool.wildmotorstore.entity.Cart;
import com.wildcodeschool.wildmotorstore.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CartRepository extends JpaRepository<Cart, Long> {
    List<Cart> findAllByUserAndOrdered(User user, Boolean ordered);
    List<Cart> findAllByUserOrderByOrderedAsc(User user);
}
