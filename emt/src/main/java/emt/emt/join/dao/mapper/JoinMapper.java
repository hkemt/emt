package emt.emt.join.dao.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import emt.emt.common.domain.User;

public interface JoinMapper {
	@Select("select user_id userId FROM USERS WHERE user_id=#{userId}")
	User duplCheck(User user);
	
	@Insert("INSERT INTO users values (#{userId},#{userPw},#{email},sysdate,0,#{uuid})")
	int joinUser(User user);
	
	// 관리자가 직접 가입 시키는 쿼리
	@Insert("insert into users values (#{userId}, #{userPw}, #{email}, sysdate, 1, 'a')")
	int joinAdminUser(User user);
}
