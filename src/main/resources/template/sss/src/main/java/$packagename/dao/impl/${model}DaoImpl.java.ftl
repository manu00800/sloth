package ${packageName}.dao.impl;
import java.util.*;
import ${packageName}.model.${upperFirstLetterName};
import ${packageName}.dao.${upperFirstLetterName}Dao;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.beans.factory.annotation.Autowired;
import javax.annotation.Generated;

@Generated(
	value = {
		"https://github.com/dee1024/sloth",
		"sloth version:1.0"
	},
	comments = "This class is generated by sloth"
)
@Repository(value = "${lowerFirstLetterName}Dao")
public class ${upperFirstLetterName}DaoImpl implements ${upperFirstLetterName}Dao{

	@Autowired
	JdbcTemplate jdbcTemplate;

	public Integer count(){
		String sql = "select count(*) from ${name}";
		return jdbcTemplate.queryForObject(sql,null,Integer.class);
	}

	public ${upperFirstLetterName} getBy${upperFirstLetterPrimaryKey}(${primaryKeyType} ${primaryKey}){
		String sql = "select * from ${name} where ${primaryKey} = ? limit 1" ;
		List<${upperFirstLetterName}> ${name}s = jdbcTemplate.query(sql,new Object[]{${primaryKey}}, BeanPropertyRowMapper.newInstance(${upperFirstLetterName}.class));
    	if(${name}s==null || ${name}s.size()==0)
    		return null;
    	return ${name}s.get(0);
	}

	public Integer deleteBy${upperFirstLetterPrimaryKey}(${primaryKeyType} ${primaryKey}){
		String sql = "delete from ${name} where ${primaryKey} = ? ";
		return jdbcTemplate.update(sql, ${primaryKey});
	}

	public Integer update(${upperFirstLetterName} ${lowerFirstLetterName}){
		String sql = " update ${name} set ${stringCarrayNames9}  where ${primaryKey} = ? ";
		return jdbcTemplate.update(sql, ${stringCarrayNames10});
	}

	public Integer save(${upperFirstLetterName} ${lowerFirstLetterName}){
		String sql = " insert into ${name} ( ${stringCarrayNames3} ) values (${stringCarrayNames11}) ";
		return jdbcTemplate.update(sql, ${stringCarrayNames12});
	}

	public List<${upperFirstLetterName}> list(){
		List<${upperFirstLetterName}> ${name}s = new ArrayList<>();
		String sql = "select * from ${name} limit 50" ;
		${name}s = jdbcTemplate.query(sql, BeanPropertyRowMapper.newInstance(${upperFirstLetterName}.class));
		return ${name}s;
	}

	public List<${upperFirstLetterName}> page(int start, int step ){
		return null;
	}
	
}