package com.factory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbFactory {

	static Connection con;
	public static Connection getMysqlConnection()
	{
		try{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ecommerce","root","sourav");
		}catch(ClassNotFoundException e){}
		catch(SQLException e){}
		return con;
	}
}
