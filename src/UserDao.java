package cn.znke.etp.dao;

import cn.znke.etp.domain.User;


public interface UserDao {
	//���
	public int addUser(User user);
	//����
	public void updateUser(User user);
	//��֤
	public User getUser(String uname);
}
