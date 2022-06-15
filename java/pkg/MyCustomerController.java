package pkg;
import dao.customer.*;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyCustomerController {

	JdbcTemplateExample objtemplate = new JdbcTemplateExample();
	
	@RequestMapping("/customerdb")
	public String customerDashboard()
	{
		return "dashboard";
	}
	
	
	@RequestMapping("/showAllCustomerDetails")
	public String showAllCustomerDetails(Model model)
	{
		List<String> uniqueCities = objtemplate.getAllUniqueCities();
		List<CustomerInfo> list = objtemplate.getAllCustomers();
		
		model.addAttribute("allcustomers",list);
		model.addAttribute("uc",uniqueCities);
		model.addAttribute("tc",list.size());
		
		
		return "viewallcustomers";
	}
	
	@RequestMapping("/viewFilterCustomers")
	public String showFilterCustomerDetails(HttpServletRequest request, Model model)
	{
		List<String> uniqueCities = objtemplate.getAllUniqueCities();
		String filtercity = request.getParameter("filtercity");
		
		List<CustomerInfo> list=null;
		
		if(!filtercity.equals("ShowAll"))
		{
			list = objtemplate.getAllCustomers(filtercity);
		}
		else
		{
			list = objtemplate.getAllCustomers();
		}
		model.addAttribute("allcustomers",list);
		model.addAttribute("uc",uniqueCities);
		model.addAttribute("tc",list.size());
		
		return "viewallcustomers";
	}
	
	@RequestMapping("/insertNewCustomerForm")
	public String insertNewCustomerForm()
	{
		return "insertNewCustomerForm";
	}
	
	@RequestMapping("/saveNewCustomer")
	public String saveNewCustomer(HttpServletRequest request,Model model)
	{
		//int cid = Integer.parseInt(request.getParameter("cid"));
		int cid = objtemplate.getNewCustomerID();
		String cname = request.getParameter("cname");
		String ccity = request.getParameter("ccity");
		int  cbalance = Integer.parseInt(request.getParameter("cbalance"));
		
		objtemplate.insertNewCustomer(cid, cname, ccity, cbalance);
		
		return "redirect:/showAllCustomerDetails";  
	}

	@RequestMapping("/deleteCustomer/{cid}")
	public String saveNewCustomer(@PathVariable int cid)
	{
		objtemplate.deleteCustomer(cid);
		return "redirect:/showAllCustomerDetails";  
	}
	
	@RequestMapping("/editCustomerForm/{cid}")
	public String editCustomerForm(@PathVariable int cid, Model model)
	{
		CustomerInfo objCustomer = objtemplate.searchCustomer(cid);
		
				
		model.addAttribute("customer",objCustomer);
		return "editForm";  
	}

	@RequestMapping("/updateCustomerDetail")
	public String updateCustomerDetail(HttpServletRequest request)
	{
		int cid = Integer.parseInt(request.getParameter("cid"));
		String ccity = request.getParameter("ccity");
		int cbalance = Integer.parseInt(request.getParameter("cbalance"));
		objtemplate.updateCustomer(cid, ccity, cbalance);
		
		return "redirect:/showAllCustomerDetails";  
	}
}