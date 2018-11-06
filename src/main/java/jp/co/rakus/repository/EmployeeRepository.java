package jp.co.rakus.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import jp.co.rakus.domain.Employee;

@Repository
public class EmployeeRepository {

	@Autowired
	private NamedParameterJdbcTemplate template;
	
	
	private final static RowMapper<Employee> EMPLOYEE_ROWMAPPER = (rs, i) -> {
		Employee employee = new Employee();
		employee.setId(rs.getInt("id"));
		employee.setName(rs.getString("name"));
		employee.setImage(rs.getString("image"));
		employee.setGender(rs.getString("gender"));
		employee.setHiredate(rs.getTimestamp("hiredate"));
		employee.setMailAddress(rs.getString("mail_address"));
		employee.setZipCode(rs.getString("zip_code"));
		employee.setAddress(rs.getString("address"));
		employee.setTelephone(rs.getString("telephone"));
		employee.setSalary(rs.getInt("salary"));
		employee.setCharacteristics(rs.getString("characteristics"));
		employee.setDependentsCount(rs.getInt("dependents_count"));
		return employee;
	};
	
	
	public List<Employee> findAll() {
		String sql = "SELECT id,name,image,gender,hiredate,mail_address,zip_code,address,telephone,salary,characteristics,dependents_count From employees order by id desc;";


		List<Employee> employeeList = template.query(sql,EMPLOYEE_ROWMAPPER);
		return employeeList;
	}
	
	public Employee load(Integer id) {
		String sql = "SELECT id,name,image,gender,hiredate,mail_address,zip_code,address,telephone,salary,characteristics,dependents_count From employees where id=:id order by id desc;";
		SqlParameterSource param = new MapSqlParameterSource().addValue("id", id);

		Employee employee = template.queryForObject(sql, param, EMPLOYEE_ROWMAPPER);
		return employee;
	}
	
	public void updateDependentsCount(int id , int num) {
		
		String insertSql = "UPDATE employees set dependents_count = :dependents_count where id = :id ";
		SqlParameterSource param = new MapSqlParameterSource().addValue("dependents_count", num).addValue("id", id);		
		template.update(insertSql, param);
	}

}
