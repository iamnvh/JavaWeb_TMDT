package shop.services;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;

import shop.entities.ProductImage;

@Service
public class ProductImagesService extends BaseService<ProductImage>{
	@PersistenceContext
	EntityManager entityManager;

	@Override
	protected EntityManager em() {
		return entityManager;
	}

	@Override
	protected Class<ProductImage> clazz() {
		return ProductImage.class;
	}
}
