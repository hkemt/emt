package emt.emt.dao.mapper;

import java.util.List;




import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import emt.emt.domain.User;

public interface UserMapper {
	@Select("select user_id userId, user_pw userPw FROM USERS WHERE user_id=#{userId} and user_pw=#{userPw}")
	User loginCheck(User user);
}