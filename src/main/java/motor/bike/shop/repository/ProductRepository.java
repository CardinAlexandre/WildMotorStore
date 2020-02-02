package motor.bike.shop.repository;

import motor.bike.shop.entity.Product;
import motor.bike.shop.entity.Purchase;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
}
