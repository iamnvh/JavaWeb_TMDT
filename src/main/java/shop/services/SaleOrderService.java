package shop.services;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import shop.entities.SaleOrder;


@Service
public class SaleOrderService extends BaseService<SaleOrder> {

	@PersistenceContext
	EntityManager entityManager;

	@Override
	protected EntityManager em() {
		// TODO Auto-generated method stub
		return entityManager;
	}

	@Override
	protected Class<SaleOrder> clazz() {
		// TODO Auto-generated method stub
		return SaleOrder.class;
	}

	@Transactional(rollbackOn = Exception.class)
	public SaleOrder save(SaleOrder saleOrder) throws Exception {
		try {

			// SaleOrderProduct.setSeo(new Slugify().slugify(saleOrderProduct.get));

			// save to db
			SaleOrder saved = super.saveOrUpdate(saleOrder);
			return saved;
		} catch (Exception e) {
			throw e;
		}
	}

}
