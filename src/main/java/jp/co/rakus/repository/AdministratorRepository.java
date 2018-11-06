package jp.co.rakus.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import jp.co.rakus.domain.Administrator;

@Repository
public class AdministratorRepository {

	@Autowired
	private NamedParameterJdbcTemplate template;

	private final static RowMapper<Administrator> ARTICLE_ROWMAPPER = (rs, i) -> {
		Administrator administrator = new Administrator();
		administrator.setId(rs.getInt("id"));
		administrator.setName(rs.getString("name"));
		administrator.setMailAddress(rs.getString("mail_address"));
		administrator.setPassword(rs.getString("password"));
		return administrator;
	};

	public Administrator findByMailAddressAndPassword(String mailAddress, String password) {

		String sql = "SELECT id,name,mail_address,password from administrators where mail_address = :mailAddress and password = :password;";

		SqlParameterSource param = new MapSqlParameterSource().addValue("mailAddress", mailAddress).addValue("password",
				password);

		List<Administrator> administrator = template.query(sql, param, ARTICLE_ROWMAPPER);

		if (administrator.isEmpty()) {
			return null;
		} else {
			return administrator.get(0);
		}
	}

	public void insertAdministrator(Administrator administrator) {

		SqlParameterSource param = new BeanPropertySqlParameterSource(administrator);
		String insertSql = "INSERT INTO administrators(name,mail_address,password)values(:name,:mailAddress,:password);";
		template.update(insertSql, param);
	}
}
