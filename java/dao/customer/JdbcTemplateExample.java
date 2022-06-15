package dao.customer;

import java.util.List;
import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

public class JdbcTemplateExample 
{
	public JdbcTemplate getTemplate()
	{
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
		JdbcTemplate temp = (JdbcTemplate)context.getBean("tmp");
		return temp;
	}

	public int getNewCustomerID()
	{
	
		JdbcTemplate temp = getTemplate();	
		Integer newcid = temp.queryForObject("select max(cid) + 1 from customerinfo",Integer.class);
		return newcid;
	}
	public List<CustomerInfo> getAllCustomers()
	{
		JdbcTemplate temp = getTemplate();
		List<CustomerInfo> list = temp.query("Select * from CustomerInfo",new CustomerMapper());
		
		return list;
		//for(CustomerInfo customer : list)
		//	customer.displayCustomerInfo();
		
	}
	public List<CustomerInfo> getAllCustomers(String ccity)
	{
		JdbcTemplate temp = getTemplate();
		List<CustomerInfo> list = temp.query("Select * from CustomerInfo where ccity=?",new Object[] {ccity},new CustomerMapper());
		return list;
	}
	public List<String> getAllUniqueCities()
	{
		JdbcTemplate temp = getTemplate();
		List<String> list = temp.queryForList("Select unique(ccity) from customerinfo", String.class);
		return list;
	}
	
	public void insertNewCustomer(int cid,String cname,String ccity,int cbalance)
	{
		JdbcTemplate temp = getTemplate();	
		temp.update("insert into customerinfo values(?,?,?,?)",new Object[] {cid,cname,ccity,cbalance});
		System.out.println("----------row inserted");
	}
	public void updateCustomer(int cid,String ccity, int cbalance)
	{
		JdbcTemplate temp = getTemplate();	
		temp.update("update customerInfo set caccbalance = ?, ccity=? where cid =?",new Object[] {cbalance,ccity,cid});
	}
	
	public void deleteCustomer(int cid)
	{
		JdbcTemplate temp = getTemplate();	
		temp.update("delete from customerinfo where cid =?",new Object[] {cid});

	}
	
	
	public CustomerInfo searchCustomer(int cid)
	{
		JdbcTemplate temp = getTemplate();	
		CustomerInfo customer = temp.queryForObject("Select * from CustomerInfo where cid = ?",
											new Object [] {cid},new CustomerMapper());
		return customer;
	}
	
	public void countTotalCustomers()
	{
		JdbcTemplate temp = getTemplate();
		Integer totalcustomers = temp.queryForObject("select count(*) from customerinfo",Integer.class);
		
		System.out.println("Total customers : " + totalcustomers);
	}
	
	
	public static void main(String s[])
	{
		JdbcTemplateExample obj = new JdbcTemplateExample();
		Scanner sc = new Scanner(System.in);
		
		//obj.insert(sc.nextInt(),sc.next(),sc.next(),sc.nextInt());
		//obj.update(sc.nextInt(), sc.nextInt());
		//obj.select();
		
		//obj.searchCustomer(sc.nextInt());
		
	//	obj.countTotalCustomers();
	
		System.out.println(obj.getAllUniqueCities().size());
	}
}


