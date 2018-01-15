package cn.znke.etp.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

import cn.znke.etp.domain.Ke;
import cn.znke.etp.service.KeService;

public class KeAction {
	private Ke ke;
	KeService keService;
	private int pages;
	private int pageSize=15;	
	private int curPage=1;
	private int pageCount=1;
	private int kid;
	private String kname;
	private String ksex;
	private String kjibie;
	private String kjob;
	private String kage;
	private String kzhiwei;
	private String kphone;

	public String getKeHu(){System.out.println("name"+kname);
	if(kname.equals("")){kname="%";}
		if(ksex.equals("请选择")){ksex="%";}
		if(kjibie.equals("请选择")){kjibie="%";}
		int count = keService.getKeCount(kname, ksex, kjibie);
		if(count%pageSize==0)
			pageCount=count/pageSize;
		else
			pageCount=count/pageSize+1;		
		if(curPage<1)
			curPage=1;
		if(curPage>pageCount)
			curPage=pageCount;
		pages = count;
		List<Ke> list = keService.getKeTiaoJian(kname, ksex, kjibie, pageSize, curPage);
		if(list.size()>0){
			Map request=(Map)ActionContext.getContext().get("request");
		System.out.println(list.get(0).getKname());
		request.put("kname1",kname);
		request.put("ksex1",ksex);
		request.put("kjibie1",kjibie);
		request.put("keList",list);
		}
		return "ok";
	}
	public String addKeHu(){System.out.println("name"+kname);
		if(kname.equals("")||kage.equals("")||kphone.equals("")||kjob.equals("")||kzhiwei.equals("")){
			String message ="请填写完整在提交！";
			Map request=(Map)ActionContext.getContext().get("request");
			request.put("message",message);
			return "addno";
		}else{
		Ke ke = new Ke();
		ke.setKname(kname);
		ke.setKsex(ksex);
		ke.setKage(Integer.parseInt(kage));
		ke.setKjibie(kjibie);
		ke.setKjob(kjob);
		ke.setKphone(kphone);
		ke.setKzhiwei(kzhiwei);
		int count = keService.addKe(ke);
		if(count>0){
			String message ="添加成功！";
			Map request=(Map)ActionContext.getContext().get("request");
			request.put("message",message);
			return "addok";
		}else{
			String message ="添加失败！";
			Map request=(Map)ActionContext.getContext().get("request");
			request.put("message",message);
			return "addok";
		}
		}
		
	}
	public String deleteKeHu(){
		Ke ke = new Ke();
		ke = keService.getKeById(kid);
		boolean count = keService.deleteKe(ke);
		if(count){
			String message="删除成功！";
			Map request=(Map)ActionContext.getContext().get("request");
			request.put("message",message);
			return "addok";
		}else{
			String message="删除失败，请重新尝试！";
			Map request=(Map)ActionContext.getContext().get("request");
			request.put("message",message);
			return "addok";
		}
	}
	public String updateKeHu(){
		Ke ke = new Ke();
		ke = keService.getKeById(kid);
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("keList1",ke);
		return "updateok";
	}
	public String updateKeHu1(){
		if(kname.equals("")||kage.equals("")||kphone.equals("")||kjob.equals("")||kzhiwei.equals("")){
			String message ="请填写完整在提交！";
			Map request=(Map)ActionContext.getContext().get("request");
			request.put("message",message);
			return "addno";
		}else{
		Ke ke = new Ke();
		ke = keService.getKeById(kid);
		ke.setKname(kname);
		ke.setKsex(ksex);
		ke.setKage(Integer.parseInt(kage));
		ke.setKjibie(kjibie);
		ke.setKjob(kjob);
		ke.setKphone(kphone);
		ke.setKzhiwei(kzhiwei);
		boolean count = keService.updateKe(ke);
		if(count){
			String message="更新成功！";
			Map request=(Map)ActionContext.getContext().get("request");
			request.put("message",message);
			return "addok";
		}else{
			String message="更新失败，请重新尝试！";
			Map request=(Map)ActionContext.getContext().get("request");
			request.put("message",message);
			return "addok";
		}
		}
		
	}
	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public KeService getKeService() {
		return keService;
	}
	public void setKeService(KeService keService) {
		this.keService = keService;
	}
	public void setKe(Ke ke) {
		this.ke = ke;
	}
	public Ke getKe() {
		return ke;
	}
	public String getKname() {
		return kname;
	}
	public void setKname(String kname) {
		this.kname = kname;
	}
	public String getKsex() {
		return ksex;
	}
	public void setKsex(String ksex) {
		this.ksex = ksex;
	}
	public String getKjibie() {
		return kjibie;
	}
	public void setKjibie(String kjibie) {
		this.kjibie = kjibie;
	}

	public void setPages(int pages) {
		this.pages = pages;
	}

	public int getPages() {
		return pages;
	}
	public void setKjob(String kjob) {
		this.kjob = kjob;
	}
	public String getKjob() {
		return kjob;
	}
	public void setKage(String kage) {
		this.kage = kage;
	}
	public String getKage() {
		return kage;
	}
	public void setKzhiwei(String kzhiwei) {
		this.kzhiwei = kzhiwei;
	}
	public String getKzhiwei() {
		return kzhiwei;
	}
	public void setKphone(String kphone) {
		this.kphone = kphone;
	}
	public String getKphone() {
		return kphone;
	}
	public void setKid(int kid) {
		this.kid = kid;
	}
	public int getKid() {
		return kid;
	}
}
