package com.user;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBconn {

	public static String filepath="G:\\BE2022-2023\\Vinod Sir\\Medical_Supply_Chain\\QRCode";
	public static String newfilepath="G:/BE2022-2023/Vinod Sir/Medical_Supply_Chain/QRCode";
	public static Connection conn() throws ClassNotFoundException, SQLException
	{
		Connection con;
		 Class.forName("com.mysql.jdbc.Driver");
		  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/22c9648_medicine_supply_chain","root","admin");
		   
	return con;
	}
	
}
