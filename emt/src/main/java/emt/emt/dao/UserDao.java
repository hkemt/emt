package emt.emt.dao;

import java.util.List;

import emt.emt.domain.User;

public interface UserDao {

	User loginCheck(User user);	//로그인 확인
}
