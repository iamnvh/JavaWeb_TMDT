package shop.dto;

public class ProductSearchModel {
	private int categoryId;
	private String categorySeo;
	private String productSeo;
	private String searchText;
	private String price1;
	private String price2;
	private int isHot;
	
	
	public String getProductSeo() {
		return productSeo;
	}
	public void setProductSeo(String productSeo) {
		this.productSeo = productSeo;
	}
	public int getIsHot() {
		return isHot;
	}
	public void setIsHot(int isHot) {
		this.isHot = isHot;
	}
	public String getPrice1() {
		return price1;
	}
	public void setPrice1(String price1) {
		this.price1 = price1;
	}
	public String getPrice2() {
		return price2;
	}
	public void setPrice2(String price2) {
		this.price2 = price2;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategorySeo() {
		return categorySeo;
	}
	public void setCategorySeo(String categorySeo) {
		this.categorySeo = categorySeo;
	}
	public String getSearchText() {
		return searchText;
	}
	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}
	
	
}
