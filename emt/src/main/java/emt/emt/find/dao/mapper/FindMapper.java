package emt.emt.find.dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import emt.emt.common.domain.User;

public interface FindMapper {
	@Select("SELECT user_id userId FROM USERS WHERE email=#{email}")
	List<User> FindId(User user);
	
	@Select("SELECT user_pw userPw FROM USERS WHERE email=#{email} and user_id=#{userId}")
	User FindPw(User user);
}
