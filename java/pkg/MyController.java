package pkg;

import javax.servlet.http.HttpServletRequest;
import bl.*;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {
	
	@RequestMapping("/")
	public String welcome()
	{
		return "welcome";
	}
	
	@RequestMapping("/calci")
	public String calciWebPage()
	{
		return "calcipage";
	}
	
	@RequestMapping("/stc")
	public String showStandardCalciForm()
	{
		return "standardcalci";
	}
	
	@RequestMapping("/scc")
	public String showScientificCalciForm()
	{
		return "scientificcalci";
	}
	
	@RequestMapping("/addSerive")
	public String addService(HttpServletRequest request, Model model)
	{
		
		int fno = Integer.parseInt(request.getParameter("fno"));
		int sno = Integer.parseInt(request.getParameter("sno"));
		
		Calculator objCalci = new Calculator();
		int answer = objCalci.addTwoNum(fno, sno);
		
		model.addAttribute("x",fno);
		model.addAttribute("y",sno);
		model.addAttribute("z",answer);
		
		return "addoutput";
	}
	
}
