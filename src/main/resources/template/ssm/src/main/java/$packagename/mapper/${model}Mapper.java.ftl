package ${packageName}.mapper;
import java.util.*;
import ${packageName}.model.${upperFirstLetterName};
import javax.annotation.Generated;
import org.apache.ibatis.annotations.*;

@Generated(
	value = {
		"https://github.com/dee1024/sloth",
		"sloth version:1.0"
	},
	comments = "This class is generated by sloth"
)
public interface ${upperFirstLetterName}Mapper{

	@Select("SELECT COUNT(*) FROM ${name} ")
	Integer count();


	@Select("SELECT * FROM ${name} WHERE ${primaryKey} = ${"#"}{${primaryKey}} LIMIT 1 ")
	@Results({
		<#list columns as column>
			<#if column_index gt 0>,</#if>@Result(property="${column.lowerFirstLetterName}",column="${column.name}")
		</#list>
	})
	${upperFirstLetterName} getBy${upperFirstLetterPrimaryKey}(@Param("${primaryKey}") ${primaryKeyType} ${primaryKey});


	@Delete("DELETE FROM ${name} WHERE ${primaryKey} = ${"#"}{${primaryKey}} ")
	Integer deleteBy${upperFirstLetterPrimaryKey}(@Param("${primaryKey}") ${primaryKeyType} ${primaryKey});

	@Update({
		"UPDATE ${name} SET ${stringCarrayNames5} where ${primaryKey} = ${"#"}{${primaryKey}}"
	})
	Integer update(${upperFirstLetterName} ${lowerFirstLetterName});

	@Insert({
		"INSERT IGNORE INTO ${name} (${stringCarrayNames3}) VALUE (${stringCarrayNames4})"
	})
	Integer save(${upperFirstLetterName} ${lowerFirstLetterName});


	@Select("SELECT * FROM ${name} LIMIT 10 ")
@Results({
<#list columns as column>
	<#if column_index gt 0>,</#if>@Result(property="${column.lowerFirstLetterName}",column="${column.name}")
</#list>
})
	List<${upperFirstLetterName}> list();


	@Select("SELECT * FROM ${name} LIMIT ${"#"}{start}, ${"#"}{step}")
@Results({
<#list columns as column>
	<#if column_index gt 0>,</#if>@Result(property="${column.lowerFirstLetterName}",column="${column.name}")
</#list>
})
	List<${upperFirstLetterName}> page(@Param("start") int start, @Param("step") int step );
	
}