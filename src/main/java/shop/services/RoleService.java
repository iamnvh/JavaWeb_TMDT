package shop.services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.mysql.cj.Query;

import shop.dto.RoleModel;
import shop.entities.Role;


@Service
public class RoleService extends BaseService<Role> {

	@PersistenceContext // là tập các thể hiện của entity được quản lý, tồn tại trong một kho dữ liệu.
	EntityManager entityManager;// Entity Manager là đối tượng quản lý các entity.

	@Override
	protected EntityManager em() {
		// TODO Auto-generated method stub
		return entityManager;
	}

	@Override
	protected Class<Role> clazz() {
		// TODO Auto-generated method stub
		return Role.class;
	}
	public Role GetRoleByName(String searchRole) {
		 String sql = "select * from tbl_roles r where r.name ='GUEST'";//" + role + "
	        List<Role> listRole=this.executeNativeSql(sql);
	        if (listRole == null || listRole.size() <= 0) {
	            return null;
	        }else {
	            return listRole.get(0);
	        }
		
	}
	public List<Role> search(RoleModel searchModel) {
		String sql = "select * from tbl_roles c where 1=1";// thu thuat de noi cau lechj
		if (searchModel != null) {
			if (searchModel.getId() > 0) {
				sql = sql + "and c.id" + searchModel.getId();
			}
			if (searchModel.getName() != null && !searchModel.getName().isEmpty()) {
				sql = sql + "and c.name like '%" + searchModel.getName() + "'%";
			}
		}

		return this.executeNativeSql(sql);
	}
}
