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



public static void main(String s[]) {



}
}