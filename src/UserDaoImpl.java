package cn.znke.etp.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.znke.etp.dao.UserDao;
import cn.znke.etp.domain.User;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	public int addUser(User user) {
		return (Integer)super.getHibernateTemplate().save(user);
	}

	public void updateUser(User user) {
		super.getHibernateTemplate().update(user);
	}

	public User getUser(String uname) {
		String hql="from User where uname='"+uname+"'";
		List<User> list = super.getHibernateTemplate().find(hql);
		return list.get(0);
	}

}
