package shop.services;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import shop.conf.MVCConf;
import shop.dto.ProductSearchModel;
import shop.entities.Product;
import shop.entities.ProductImage;

@Service
public class ProductService extends BaseService<Product> {

	@PersistenceContext
	EntityManager entityManager;

	@Autowired
	ProductImagesService productImagesService;

	@Override
	protected EntityManager em() {
		return entityManager;
	}

	@Override
	protected Class<Product> clazz() {
		return Product.class;
	}

	private boolean isEmptyUploadFile(MultipartFile[] images) {
		if (images == null || images.length <= 0)
			return true;
		if (images.length == 1 && images[0].getOriginalFilename().isEmpty())
			return true;
		return false;
	}

	private boolean isEmptyUploadFile(MultipartFile images) {
		return images == null || images.getOriginalFilename().isEmpty();
	}

	@Transactional(rollbackOn = Exception.class)
	public Product edit(Product product, MultipartFile avatar, MultipartFile[] pictures) throws Exception {
		try {
			// lay thong tin san pham trong db
			Product productOnDB = super.getById(product.getId());

			// avater
			if (!isEmptyUploadFile(avatar)) {
				// xóa avatar cũ đi
				new File(MVCConf.ROOT_UPLOAD_PATH + productOnDB.getAvatar()).delete();

				// thêm avatar mới
				avatar.transferTo(
						new File(MVCConf.ROOT_UPLOAD_PATH + "product/avatar/" + avatar.getOriginalFilename()));
				product.setAvatar("product/avatar/" + avatar.getOriginalFilename());
			} else {
				// sử dụng lại avatar cũ
				product.setAvatar(productOnDB.getAvatar());
			}

			// images
			if (!isEmptyUploadFile(pictures)) {
				// xóa danh sách ảnh cũ đi
				List<ProductImage> productImagesOnDB = new ArrayList<ProductImage>();
				for (ProductImage pic : productImagesOnDB) {
					new File(MVCConf.ROOT_UPLOAD_PATH + pic.getPath()).delete();
					productImagesService.delete(pic);
				}

				// thêm danh sách ảnh mới
				for (MultipartFile pic : pictures) {
					pic.transferTo(
							new File(MVCConf.ROOT_UPLOAD_PATH + "product/pictures/" + pic.getOriginalFilename()));

					ProductImage pi = new ProductImage();
					pi.setPath("product/pictures/" + pic.getOriginalFilename());
					pi.setTitle(pic.getOriginalFilename());
					product.addProductImages(pi);
				}
			}
			// save to DB
			product.setUpdatedDate(new Date());
			Product saved = super.saveOrUpdate(product);
			return saved;
		} catch (Exception e) {
			throw e;
		}
	}

	@Transactional(rollbackOn = Exception.class)
	public Product save(Product product, MultipartFile avatar, MultipartFile[] pictures) throws Exception {
		try {
			// avatar
			if (!isEmptyUploadFile(avatar)) {
				avatar.transferTo(
						new File(MVCConf.ROOT_UPLOAD_PATH + "product/avatar/" + avatar.getOriginalFilename()));
				product.setAvatar("product/avatar/" + avatar.getOriginalFilename());
			}

			// images
			if (!isEmptyUploadFile(pictures)) {
				for (MultipartFile pic : pictures) {
					pic.transferTo(
							new File(MVCConf.ROOT_UPLOAD_PATH + "product/pictures/" + pic.getOriginalFilename()));

					ProductImage pi = new ProductImage();
					pi.setPath("product/pictures/" + pic.getOriginalFilename());
					pi.setTitle(pic.getOriginalFilename());
					product.addProductImages(pi);
				}
			}

			// save to DB
			product.setCreatedDate(new Date());
			Product saved = super.saveOrUpdate(product);
			return saved;
		} catch (Exception e) {
			throw e;
		}
	}

	public List<Product> search(ProductSearchModel searchModel) {
		String sql = "Select * from tbl_products p where 1=1 and p.status = 1";
		// tim kiem san pham theo categoryId
		if (searchModel.getCategoryId() > 0) {
			sql += " and p.category_id = " + searchModel.getCategoryId();
		}

		// tim kiem san pham theo categorySeo
		if (!StringUtils.isEmpty(searchModel.getCategorySeo())) {
			sql += " and p.category_id in (select id from tbl_category c where c.seo = '" + searchModel.getCategorySeo()
					+ "')";
		}

		// tìm kiếm sản phẩm theo searchText
		if (!StringUtils.isEmpty(searchModel.getSearchText())) {
			sql += " and (p.title like '%" + searchModel.getSearchText() + "%'" + " or p.detail_description like '%"
					+ searchModel.getSearchText() + "%'" + " or p.short_description like '%"
					+ searchModel.getSearchText() + "%')";
		}
		// tìm kiếm theo giá tiền
		if (!StringUtils.isEmpty(searchModel.getPrice1()) && !StringUtils.isEmpty(searchModel.getPrice2())) {
			sql += " and p.price between " + searchModel.getPrice1() + " and  " + searchModel.getPrice2();
		}
		// tìm kiếm sản phẩm hót
		if (searchModel.getIsHot() == 1) {
			sql += " and p.is_hot = 1 ";
		}
		// tim kiem san pham theo productSeo
		if (!StringUtils.isEmpty(searchModel.getProductSeo())) {
			sql += " and p.seo ='" + searchModel.getProductSeo() + "'";
		}
		return executeNativeSql(sql);
	}
}
