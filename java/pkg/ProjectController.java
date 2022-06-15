package pkg;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.product.ProductInfo;
import dao.product.ProductJdbcTemplate;

@Controller
public class ProjectController {

	ProductJdbcTemplate objtemplate = new ProductJdbcTemplate();

	@RequestMapping("/home")
	public String mainPage() {

		return "homePage";
	}

	@RequestMapping("/showAllProducts")
	public String showAllCustomerDetails(Model model) {
		List<ProductInfo> list = objtemplate.getAllProducts();

		model.addAttribute("allproducts", list);
		model.addAttribute("tc", list.size());

		return "viewProducts";
	}
	
	@RequestMapping("/user-dashboard")
	public String showAllProduct(Model model) {
	
		List<ProductInfo> list = objtemplate.getAllProducts();

		model.addAttribute("allproducts", list);
		model.addAttribute("tc", list.size());
		return "user-dashboard";
	}
	
	@RequestMapping("Prod")
	public String showAllProducts(Model model) {
		List<ProductInfo> list = objtemplate.getAllProducts();

		model.addAttribute("allproducts", list);
		model.addAttribute("tc", list.size());
		return "Prod";
	}
	
	@RequestMapping("ProductHori")
	public String showAllProductHorizontally(Model model) {
		
		List<ProductInfo> list = objtemplate.getAllProducts();

		model.addAttribute("allproducts", list);
		model.addAttribute("tc", list.size());
	
		return "ProductHori";
	}

}
