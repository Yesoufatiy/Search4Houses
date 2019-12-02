package mySQLAccess;

import java.sql.*;
class MysqlCon1{
	public static void main(String args[])
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/search4houses","root","");
			//here cs157a is database name, root is username and password
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from listing");
			while(rs.next())
			{	
				System.out.println(rs.getString(1)+" "+rs.getInt(2)+" "+rs.getFloat(3)+" "+rs.getInt(4)+" "+rs.getString(5)+" "+rs.getString(6)+" "+rs.getString(7));
			}
				con.close();
		}
		catch(Exception e){ System.out.println(e);}
	}
}
