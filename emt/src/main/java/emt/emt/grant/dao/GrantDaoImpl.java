package emt.emt.grant.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import emt.emt.common.domain.User;
import emt.emt.grant.dao.mapper.GrantMapper;

@Repository
public class GrantDaoImpl implements GrantDao{

	@Autowired private GrantMapper grantMapper;
	
	@Override
	public int grantAuth(User user) {
		return grantMapper.grantAuth(user);
	}
}
