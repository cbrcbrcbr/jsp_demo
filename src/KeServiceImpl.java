package cn.znke.etp.service.impl;

import java.util.List;

import cn.znke.etp.dao.KeDao;
import cn.znke.etp.domain.Ke;
import cn.znke.etp.service.KeService;

public class KeServiceImpl implements KeService {
	KeDao keDao;
	public KeDao getKeDao() {
		return keDao;
	}

	public void setKeDao(KeDao keDao) {
		this.keDao = keDao;
	}

	public List<Ke> getKeAll(int pageSize, int curPage) {
		return keDao.getKeAll(pageSize, curPage);
	}

	public List<Ke> getKeTiaoJian(String kname, String ksex, String kjibie,
			int pageSize, int curPage) {
		return keDao.getKeTiaoJian(kname, ksex, kjibie, pageSize, curPage);
	}
	
	public int getKeCount(String kname, String ksex, String kjibie){
		return keDao.getKeCount(kname, ksex, kjibie);
	}
	
	public int addKe(Ke ke) {
		return keDao.addKe(ke);
	}

	public boolean updateKe(Ke ke) {
		try{
			keDao.updateKe(ke);
			return true;
		}catch(Exception ex){
			return false;
		}
	}

	public boolean deleteKe(Ke ke) {
		try{
			keDao.deleteKe(ke);
			return true;
		}catch(Exception ex){
			return false;
		}
	}

	public Ke getKeById(int kid) {
		return keDao.getKeById(kid);
	}

}
