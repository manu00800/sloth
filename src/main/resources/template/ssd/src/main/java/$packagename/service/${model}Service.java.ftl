package ${packageName}.service;
import java.util.*;
import ${packageName}.model.${upperFirstLetterName};
import ${packageName}.common.Page;
import javax.annotation.Generated;

@Generated(
	value = {
		"https://github.com/dee1024/sloth",
		"sloth version:1.0"
	},
	comments = "This class is generated by sloth"
)
public interface ${upperFirstLetterName}Service{

	void save(${upperFirstLetterName} ${lowerFirstLetterName});

	Long count();

	${upperFirstLetterName} getBy${upperFirstLetterPrimaryKey}(${primaryKeyType} ${primaryKey});

	void deleteBy${upperFirstLetterPrimaryKey}(${primaryKeyType} ${primaryKey});

	void update(${upperFirstLetterName} ${lowerFirstLetterName});

	List<${upperFirstLetterName}> list();

	Page<${upperFirstLetterName}> page(int pageNo, int pageSize);


}