package emt.emt.join.dao.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import emt.emt.common.domain.User;

public interface JoinMapper {
	@Select("select user_id userId FROM USERS WHERE user_id=#{userId}")
	User duplCheck(User user);
	
	@Insert("INSERT INTO users values (#{userId},#{userPw},#{email},sysdate,0)")
	int joinUser(User user);
}
