package cn.znke.etp.dao.impl;

import java.util.ArrayList;
import java.util.List;


import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.znke.etp.dao.KeDao;
import cn.znke.etp.domain.Ke;

public class KeDaoImpl extends HibernateDaoSupport implements KeDao {

	public List<Ke> getKeAll(int pageSize, int curPage) {
		String hql="from Ke";
		List<Ke> list = new ArrayList<Ke>();
		list = super.getHibernateTemplate().find(hql);
		return list;
	}

	public List<Ke> getKeTiaoJian(String kname, String ksex, String kjibie,
			int pageSize, int curPage) {
		String hql="from Ke where kname like '%"+kname+"%' and ksex like '%"+ksex+"%' and kjibie like '%"+kjibie+"%'";
		Query query = super.getSession().createQuery(hql);		
		query.setFirstResult((curPage-1)*pageSize);		
		query.setMaxResults(pageSize);
		return query.list();
	}
	public int getKeCount(String kname, String ksex, String kjibie){
		String hql="from Ke where kname like '%"+kname+"%' and ksex like '%"+ksex+"%' and kjibie like '%"+kjibie+"%'";
		List<Ke> list = new ArrayList<Ke>();
		list = super.getHibernateTemplate().find(hql);
		return list.size();
	}
	public int addKe(Ke ke) {
		return (Integer)super.getHibernateTemplate().save(ke);
	}

	public void updateKe(Ke ke) {
		super.getHibernateTemplate().update(ke);
	}

	public void deleteKe(Ke ke) {
		super.getHibernateTemplate().delete(ke);
	}

	public Ke getKeById(int kid) {
		return super.getHibernateTemplate().get(Ke.class, kid);
	}

}
