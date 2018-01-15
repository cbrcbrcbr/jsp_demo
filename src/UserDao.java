package cn.znke.etp.dao;

import cn.znke.etp.domain.User;


public interface UserDao {
	//添加
	public int addUser(User user);
	//更新
	public void updateUser(User user);
	//验证
	public User getUser(String uname);
}
