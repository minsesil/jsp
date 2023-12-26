//3군데수정(DBConnectionMgr.java생성후 수정)
package ch05;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class RegisterMgrPool6 {
	
private DBConnectionMgr pool = null;  //1.변수선언(수정)
	
	public RegisterMgrPool6() {
		try {
			pool = DBConnectionMgr.getInstance();  //2.생성자형성(수정)
		} catch (Exception e) {
			System.out.println("커넥션 얻어오기 실패");
		}
	}
	
	// 내가 필요한 select, insert, delete, update등을 메소드로 정의
	public ArrayList<EmployeeBean5> getEmpList() {
		ArrayList<EmployeeBean5> alist = new ArrayList<EmployeeBean5>();
		try {
			Connection con = pool.getConnection();  //3.수정
			Statement st = con.createStatement();
			// String query = "select emp_id, emp_name, email, phone, salary, hire_date from employee";
			String query = "select * from employee";
			ResultSet rs = st.executeQuery(query);
			while(rs.next()) {
				EmployeeBean5 bean = new EmployeeBean5();
				bean.setEmail(rs.getString("email"));
				bean.setEmp_id(rs.getString("emp_id"));
				bean.setEmp_name(rs.getString("emp_name"));
				bean.setHire_date(rs.getString("hire_date"));
				bean.setSalary(rs.getInt("salary"));
				bean.setPhone(rs.getString("phone"));
				alist.add(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return alist;
	
	}

}
