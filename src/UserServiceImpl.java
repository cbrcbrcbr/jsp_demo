package cn.znke.etp.service.impl;

import cn.znke.etp.dao.UserDao;
import cn.znke.etp.domain.User;
import cn.znke.etp.service.UserService;

public class UserServiceImpl implements UserService {
	UserDao userDao;
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public int addUser(User user) {
		return userDao.addUser(user);
	}

	public boolean updateUser(User user) {
		try{
			userDao.updateUser(user);
			return true;
		}catch(Exception ex){
			return false;
		}
	}

	public User getUser(String uname) {
		return userDao.getUser(uname);
	}

}
