package ch05;

import java.sql.*;

public class oracleDBTest1 {
	public static void main(String[] args) {
		Connection con;
		try {
			// Class.forName("com.mysql.jdbc.Driver);
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aie","aie");
			
			System.out.println("Success");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
