package emt.emt.grant.dao.mapper;

import org.apache.ibatis.annotations.Update;

import emt.emt.common.domain.User;

public interface GrantMapper {
	@Update("UPDATE USERS set auth=1 where user_id=#{userId}")
	int grantAuth(User user);
}
