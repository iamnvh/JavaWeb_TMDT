package shop.services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;

import shop.dto.CategoryModel;
import shop.entities.Categories;

@Service // connect to database
public class CategoryService extends BaseService<Categories> {

	@Override
	protected EntityManager em() {

		return entityManager;
	}

	@Override
	protected Class<Categories> clazz() {
		// TODO Auto-generated method stub
		return Categories.class;
	}

	@PersistenceContext // là tập các thể hiện của entity được quản lý, tồn tại trong một kho dữ liệu.
	EntityManager entityManager;// Entity Manager là đối tượng quản lý các entity.

	// @SuppressWarnings("unchecked")

	public Categories edit(Categories categories) throws Exception {
		try {
			Categories categoryOnDb = super.getById(categories.getId());

			Categories saved = super.saveOrUpdate(categories);
			return saved;
		} catch (Exception e) {
			throw e;
		}

	}

	public Categories save(Categories category) throws Exception {
		try {
			Categories saved = super.saveOrUpdate(category);
			return saved;
		} catch (Exception e) {
			throw e;
		}

	}

	/**
	 * tra ve danh sach Menu cha.
	 * 
	 * @return
	 */
	public List<Categories> getAllParents() {
		String sql = "select * from tbl_category tc where tc.parent_id is null";
		return this.executeNativeSql(sql);
	}

	/**
	 * tim kiem danh sach categories.
	 * 
	 * @param searchModel
	 * @return
	 */
	public List<Categories> search(CategoryModel searchModel) {
		String sql = "SELECT * FROM tbl_category c WHERE 1=1"; // thu thuat de noi cau lechj

		if (searchModel != null) {
			if (searchModel.getId() > 0) {
				sql = sql + " AND c.id = " + searchModel.getId();
			}
			if (searchModel.getName() != null && !searchModel.getName().isEmpty()) {
				sql = sql + " AND c.name like '%" + searchModel.getId() + "%'";
			}
		}

		return this.executeNativeSql(sql);
	}

}
