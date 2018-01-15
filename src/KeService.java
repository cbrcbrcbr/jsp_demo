package cn.znke.etp.service;

import java.util.List;

import cn.znke.etp.domain.Ke;

public interface KeService {
	//查询所有
	public List<Ke> getKeAll(int pageSize, int curPage);
	//条件查询
	public List<Ke> getKeTiaoJian(String kname,String ksex,String kjibie,int pageSize, int curPage);
	public int getKeCount(String kname, String ksex, String kjibie);
	//添加
	public int addKe(Ke ke);
	//更新
	public boolean updateKe(Ke ke);
	//删除
	public boolean deleteKe(Ke ke);
	//根据ID查询
	public Ke getKeById(int kid);
}
