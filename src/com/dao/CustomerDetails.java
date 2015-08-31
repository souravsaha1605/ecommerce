package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.factory.DbFactory;
import com.model.Customer;
import com.model.StockItem;

public class CustomerDetails {
	

	PreparedStatement pStatement;
	int result;
	String result2;
	
	public int checkEmail(String email)
	{
		List<Customer> list = new ArrayList<Customer>();
		try
		{
			pStatement=DbFactory.getMysqlConnection().prepareStatement("select * from customer where email=?");
			pStatement.setString(1, email);
			
			ResultSet rs = pStatement.executeQuery();
			Customer cstmr;
			while(rs.next())
			{
				cstmr=new Customer();
				cstmr.setEmail(rs.getString(6));
				list.add(cstmr);
				
			}
			if(list.isEmpty())
			{
				return 1;
			}else{
				return 0;
			}
			
			
			
		}catch(Exception e){
			
		}
		
		
		
		return 0;
		
	}
	
	public int validateUser(String email,String password)
	{
		
		List<Customer> list = new ArrayList<Customer>();
		try
		{
			
			pStatement=DbFactory.getMysqlConnection().prepareStatement("select * from customer where email=? and password=?");
			pStatement.setString(1, email);
			pStatement.setString(2, password);
			System.out.println("inside dao");
			ResultSet rs = pStatement.executeQuery();
			Customer cstmr;
			while(rs.next())
			{
				cstmr=new Customer();
				
				cstmr.setEmail(rs.getString(6));
				list.add(cstmr);
				
			}
			if(list.isEmpty())
			{
				return 0;
			}else{
				return 1;
			}
			
			
			
		}catch(Exception e){
			
		}

		
		
		
		return 0;
	}
	
	public List<Customer> extractDetails(String email)
	{
		List<Customer> list = new ArrayList<Customer>();
		
		try{
			
			
			pStatement=DbFactory.getMysqlConnection().prepareStatement("select * from customer where email=?");
			pStatement.setString(1, email);
			
			ResultSet rs = pStatement.executeQuery();
			Customer cstmr;
			while(rs.next())
			{
				cstmr=new Customer();
				cstmr.setCustomer_no(rs.getInt(1));
				cstmr.setFirstName(rs.getString(8));
				cstmr.setMiddleName(rs.getString(9));
				cstmr.setLastName(rs.getString(10));
				
				//cstmr.setEmail(rs.getString(6));
				cstmr.setStreet(rs.getString(2));
				cstmr.setZip_code(rs.getInt(5));
				cstmr.setCity(rs.getString(3));
				cstmr.setState(rs.getString(4));
				list.add(cstmr);
				
				
			}
			return list;
			
			
			
		}catch(Exception e)
		{
			
		}
		
		return list;
		
	}
	public int updateAddress(List<Customer> listEdit)
	{
		try{
			pStatement=DbFactory.getMysqlConnection().prepareStatement("update customer set street=?, city=?, state=?, zip_code=? where customer_no=?");
			for(Customer cst: listEdit)
			{
				pStatement.setString(1,cst.getStreet());
				pStatement.setString(2,cst.getCity());
				pStatement.setString(3,cst.getState());
				pStatement.setInt(4, cst.getZip_code());
				pStatement.setInt(5,cst.getCustomer_no());
			}
			
			int rs=pStatement.executeUpdate();
			
		}catch(Exception e){
			
		}
		
		
		return result;
		
	}
      
	
	public int insertAddress(List<Customer> list)
	{
		int p_o_number=0;
		int lineItemNo=0;
		
		try{
			
			pStatement=DbFactory.getMysqlConnection().prepareStatement("insert into purchase_order (customer_no,to_street,to_city,to_state,to_zip_code) values(?,?,?,?,?)");
			for(Customer cst: list)
			{
				pStatement.setInt(1,cst.getCustomer_no());
				pStatement.setString(2, cst.getStreet());
				pStatement.setString(3, cst.getCity());
				pStatement.setString(4, cst.getState());
				pStatement.setInt(5, cst.getZip_code());
			}
			
			
			int rs=pStatement.executeUpdate();
			
			
			pStatement=DbFactory.getMysqlConnection().prepareStatement("select p_o_no from purchase_order order by p_o_no desc limit 1");
			
			ResultSet rsPNo=pStatement.executeQuery();
			Customer cstmr;
			
			
			while(rsPNo.next())
			{
				
				p_o_number=rsPNo.getInt(1);
			}
			
			System.out.println(p_o_number);
			pStatement=DbFactory.getMysqlConnection().prepareStatement("insert into line_item (p_o_no) values(?)");
            pStatement.setInt(1,p_o_number);
			lineItemNo=pStatement.executeUpdate();
			
			
			/*
       pStatement=DbFactory.getMysqlConnection().prepareStatement("select litem_no from line_item order by litem_no desc limit 1");
			
			ResultSet rsLNo=pStatement.executeQuery();
			System.out.println(rsLNo.getInt(1)+"line no");
			result=rsLNo.getInt(1);
			System.out.println("test5");
			*/
		}catch(Exception e)
		{
			
		}
		
		
		return p_o_number;
		
	}
	
	
	public int insertDetails(List<Customer> list)
	{
		
		
		try{
			
			//pStatement=DbFactory.getMysqlConnection().prepareStatement("insert into customer values(?,?,?,?,?,?,?,?,?)");
			pStatement=DbFactory.getMysqlConnection().prepareStatement("insert into customer (street,city,state,zip_code,email,password,first_name,middle_name,last_name) values(?,?,?,?,?,?,?,?,?)");
			for(Customer cst: list)
			{
				System.out.print("test22");
System.out.print(cst.getCity());
				

				pStatement.setString(1, cst.getStreet());
				pStatement.setString(2, cst.getCity());
				pStatement.setString(3, cst.getState());
				pStatement.setInt(4, cst.getZip_code());
				pStatement.setString(5, cst.getEmail());
				
				pStatement.setString(6, cst.getPassword());
				pStatement.setString(7, cst.getFirstName());
				pStatement.setString(8, cst.getMiddleName());
				pStatement.setString(9, cst.getLastName());
				
			}
		
			 int rs=pStatement.executeUpdate();
			
			 
			
			
		
		}catch(Exception e)
		{
			
		}
		return 1;
		
		
	
		
	}
}
