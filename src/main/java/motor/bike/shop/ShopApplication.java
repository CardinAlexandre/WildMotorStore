package motor.bike.shop;

import motor.bike.shop.entity.FileStorageProperties;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
@EnableConfigurationProperties({
		FileStorageProperties.class
})
public class ShopApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(ShopApplication.class, args);
	}

}
