package cn.znke.etp.service;

import cn.znke.etp.domain.User;

public interface UserService {
	//���
	public int addUser(User user);
	//����
	public boolean updateUser(User user);
	//��֤
	public User getUser(String uname);
}
