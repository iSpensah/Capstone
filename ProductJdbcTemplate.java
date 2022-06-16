package dao.product;

import java.util.List;
import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

public class ProductJdbcTemplate {
	public JdbcTemplate getTemplate() {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
		JdbcTemplate temp = (JdbcTemplate) context.getBean("tmp");
		return temp;
	}

	public List<ProductInfo> getAllProducts() {
		JdbcTemplate temp = getTemplate();
		List<ProductInfo> list = temp.query("Select * from product_tbl", new ProductMapper());

		return list;
	}
	
	public List<Integer> getAllCategoryId() {
		JdbcTemplate temp = getTemplate();
		List<Integer> list = temp.queryForList("Select unique(categoryid) from product_tbl", Integer.class);
		return list;
	}
	
	public List<ProductInfo> getAllProducts(String filter){
		JdbcTemplate temp = getTemplate();
		List<ProductInfo> list = temp.query("select * from product_tbl where categoryname in ('?')",new String[]{filter}, new ProductMapper());
		return list;
		//"select * from product_tbl where categoryid in (?)"
		//"Select p.*, c.categoryname from product_tbl p join ctgry_tbl c on p.categoryid = c.categoryid where c.categoryname=?
	}
}