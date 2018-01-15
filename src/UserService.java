package cn.znke.etp.service;

import cn.znke.etp.domain.User;

public interface UserService {
	//添加
	public int addUser(User user);
	//更新
	public boolean updateUser(User user);
	//验证
	public User getUser(String uname);
}
