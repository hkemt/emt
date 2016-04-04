package emt.emt.login.dao.mapper;

import org.apache.ibatis.annotations.Select;

import emt.emt.common.domain.User;

public interface LoginMapper {
	@Select("select user_id userId, user_pw userPw FROM USERS WHERE user_id=#{userId} and user_pw=#{userPw}")
	User loginCheck(User user);
}