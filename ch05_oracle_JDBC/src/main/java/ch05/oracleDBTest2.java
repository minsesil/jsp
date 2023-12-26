package ch05;

import java.sql.*;


public class oracleDBTest2 {
	public static void main(String[] args) {
		Connection con;
		try {
			// Class.forName("com.mysql.jdbc.Driver);
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aie","aie");
			System.out.println("Success");
			
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select *from department");
			
			while(rs.next()) {
				String id = rs.getString(1);
				String title = rs.getString(2);
				String location = rs.getString(3);
				System.out.println(id + ", " + title + "," + location);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
