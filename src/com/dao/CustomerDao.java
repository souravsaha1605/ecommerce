package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.factory.DbFactory;
import com.model.Customer;
import com.model.StockItem;

public class CustomerDao {
	
	
	PreparedStatement pStatement;
	int result;
	String result2;

	public List<StockItem> checkItem(int iId)
	{
		List<StockItem> list = new ArrayList<StockItem>();
		
			
		try
		{
			
		pStatement=DbFactory.getMysqlConnection().prepareStatement("select * from stock_item where sitem_no=?");
		pStatement.setInt(1, iId);
		
		ResultSet rs = pStatement.executeQuery();
		StockItem item ;
		while(rs.next())
		{
			item=new StockItem();
			
			item.setSitem_no(rs.getInt(1));
		
			item.setDescription(rs.getString(2));
			item.setProduct_url(rs.getString(7));
			item.setCategory(rs.getString(3));
			item.setStock_avail(rs.getInt(4));
			item.setPrice(rs.getInt(5));
			list.add(item);
		}
		}catch(SQLException e){System.out.println(e);}
		catch(NumberFormatException e){}
		
		if(list.isEmpty())
		{
			System.out.print("list empty");
		}else{
			System.out.println("list not empty");

			
		}
		
		return list;
	}
	
	public int insertItem(ArrayList<ArrayList<StockItem>> listOfList,int lineItemNo,int dCharge)
	{
		int sitemNo=0;
		int sum=0,price=0;
		int listItemNo=0;
		 int count=0;
		List<StockItem> list = new ArrayList<StockItem>();
		try{
			
			
			
			/*
			pStatement=DbFactory.getMysqlConnection().prepareStatement("insert into line_item (p_o_no) values (?)");
			pStatement.setInt(1, lineItemNo);
			int lNoCheck=pStatement.executeUpdate();
			System.out.println(lNoCheck+"test10");
			*/
			
			
			
			
pStatement=DbFactory.getMysqlConnection().prepareStatement("select litem_no from line_item order by litem_no desc limit 1");
			
			ResultSet rsLNo=pStatement.executeQuery();
			Customer cstmr;
			
			
			while(rsLNo.next())
			{
				
				 listItemNo=rsLNo.getInt(1);
			}
			

			
			
			System.out.println(listItemNo+"test9");
		  
			ArrayList<Integer> itemNos=new ArrayList<Integer>();
			
	    for(ArrayList<StockItem> sItem: listOfList)
		{
			for(StockItem plist: sItem)
			{
				
				 sitemNo=plist.getSitem_no();
				 itemNos.add(sitemNo);
				pStatement=DbFactory.getMysqlConnection().prepareStatement("insert into stitem_no (litem_no,sitem_no) values(?,?)");
				pStatement.setInt(1, listItemNo);
				pStatement.setInt(2,sitemNo);
				int resultInsert=pStatement.executeUpdate();
				System.out.println("test17"+sitemNo);
				count++;
				System.out.println(count);
				
			}
		}
		
	    
			 
			//System.out.println(resultInsert);
			System.out.println(sitemNo+"print");
			
			
			//System.out.println(itemNos.get(0)+"test12");
			//System.out.println(itemNos.get(1)+"test13");
			
			for(Integer i: itemNos)
			{
				//System.out.println(i.intValue());
			/*
			int item=1001;
				System.out.println(sum);
				pStatement=DbFactory.getMysqlConnection().prepareStatement("select price from stock_item where sitem_no=?");
				//pStatement.setInt(1,i.intValue());
				pStatement.setInt(1,item);
				ResultSet rs=pStatement.executeQuery();
				System.out.println("test14");
				//StockItem sItemList;
				while(rs.next())
				{
					
				   System.out.println("test 15");
					price=rs.getInt(5);
					sum=sum+price;
					System.out.println("test 16 ");
					
				}
				*/
				System.out.println(sum);
				pStatement=DbFactory.getMysqlConnection().prepareStatement("select * from stock_item where sitem_no=?");
				//pStatement.setInt(1,i.intValue());
				pStatement.setInt(1,i.intValue());
				ResultSet rs=pStatement.executeQuery();
				System.out.println("test14");
				//StockItem sItemList;
				while(rs.next())
				{
					
				   
					price=rs.getInt(5);
					sum=sum+price;
					
					
				}
				
			}
		
			
						
						
				sum=sum+dCharge;		
						
						
						
						
				
			 
			 System.out.println(sum+"test26");
			 
			 
			 pStatement=DbFactory.getMysqlConnection().prepareStatement("update line_item set total=?,qty=?,extra_charges=? where p_o_no=?");
             pStatement.setInt(1, sum);
             pStatement.setInt(2, count);
             pStatement.setInt(3, dCharge);
             pStatement.setInt(4, lineItemNo);
			int priceInsert=pStatement.executeUpdate();
			
			System.out.println("test11");
		}catch(Exception e)
		{
			
		}
		
		return sitemNo;
		
	}
	
	public int calPrice(int saleNo)
	{
		try{
			System.out.println("test6");
			System.out.println(saleNo+"test7");
			
			pStatement=DbFactory.getMysqlConnection().prepareStatement("select price from stock_item where sitem_no=?");
			pStatement.setInt(1, 1001);
			
			ResultSet rs = pStatement.executeQuery();
			/*
			pStatement=DbFactory.getMysqlConnection().prepareStatement("select price from stock_item where sitem_no=?");
			pStatement.setInt(1, saleNo);
			ResultSet rs=pStatement.executeQuery();*/
			System.out.println(rs.getInt(5));
			
		}catch(Exception e){
			
		}
		
		return result;
	}
	
	public String getUrl(String productName)
	{
		String url=null;
		
		try{
			
			
			String sql1="select product_url from stock_item where description like '%"+productName+"%'";
			pStatement=DbFactory.getMysqlConnection().prepareStatement(sql1);
			
			ResultSet rs = pStatement.executeQuery();
			
			while(rs.next())
			{
				System.out.println("test21");
				url=rs.getString("product_url");
				
				
			}
			
			
		}catch(Exception e){
			
		}
		
		return url;
	}
	

 
}
