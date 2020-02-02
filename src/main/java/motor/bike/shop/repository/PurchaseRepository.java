package motor.bike.shop.repository;

import motor.bike.shop.entity.Cart;
import motor.bike.shop.entity.Product;
import motor.bike.shop.entity.Purchase;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PurchaseRepository extends JpaRepository<Purchase, Long> {
}
