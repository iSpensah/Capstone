package pkg;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.customer.CustomerInfo;
import dao.product.ProductInfo;
import dao.product.ProductJdbcTemplate;

@Controller
public class ProjectController {

	ProductJdbcTemplate objtemplate = new ProductJdbcTemplate();

	@RequestMapping("/")
	public String mainPage() {

		return "welcome";
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
	
	@RequestMapping("/viewFilterProduct")
	public String showFilterPoduct(HttpServletRequest request, Model model)
	{
		StringBuilder sb= new StringBuilder();
		String filter = "";
		String categoryname[] = request.getParameterValues("cat");
		//String categoryname  = request.getParameter("cat");
		if (categoryname != null && categoryname.length != 0 ) {
			for(int i=0; i<categoryname.length;i++ ) {
				sb.append("'"+categoryname[i]+"',");
				}	
			filter = sb.toString();
			filter = filter.substring(0, filter.length()-1);
		List<ProductInfo> list = objtemplate.getAllProducts(filter);
		
		//List<ProductInfo> list=null;
		model.addAttribute("allproducts",list);
		}
		else { 
			List<ProductInfo> list = objtemplate.getAllProducts();
			model.addAttribute("allproducts",list);
		}
		return "ProductHori";
	}
}