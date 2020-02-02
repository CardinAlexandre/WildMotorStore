package motor.bike.shop.repository;

import motor.bike.shop.entity.Cart;
import motor.bike.shop.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface CartRepository extends JpaRepository<Cart, Long> {
    List<Cart> findAllByUserAndOrdered(User user, Boolean ordered);
    List<Cart> findAllByUserOrderByOrderedAsc(User user);
}
