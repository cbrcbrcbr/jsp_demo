package cn.znke.etp.dao;

import java.util.List;

import cn.znke.etp.domain.Ke;


public interface KeDao {
	//��ѯ����
	public List<Ke> getKeAll(int pageSize, int curPage);
	//������ѯ
	public List<Ke> getKeTiaoJian(String kname,String ksex,String kjibie,int pageSize, int curPage);
	public int getKeCount(String kname, String ksex, String kjibie);
	//���
	public int addKe(Ke ke);
	//����
	public void updateKe(Ke ke);
	//ɾ��
	public void deleteKe(Ke ke);
	//����ID��ѯ
	public Ke getKeById(int kid);
}
