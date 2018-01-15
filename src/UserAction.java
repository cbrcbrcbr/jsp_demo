package cn.znke.etp.action;

import java.util.Map;

import javax.servlet.RequestDispatcher;

import com.opensymphony.xwork2.ActionContext;

import cn.znke.etp.domain.User;
import cn.znke.etp.service.UserService;



public class UserAction {
	private User user;
	UserService userService;
	private String uname;
	private String upass;
	private String upass1;
	private String message;
	public String getLogin(){
		user = userService.getUser(uname);
		if(user!=null&&user.getUpass().trim().equals(upass)){
			Map session = ActionContext.getContext().getSession();
			session.put("user", user);
			return "ok";
		}else{
			message="�û��������벻��ȷ��";
			return "no";
		}
	}
	public String zhuce(){
		if(uname.equals("")||upass.equals("")){
			String message ="����д�������ύ��";
			Map request=(Map)ActionContext.getContext().get("request");
			request.put("message",message);
			return "zhuceno";
		}else{
			User user2 = new User();
			user2.setUname(uname);
			user2.setUpass(upass);
			int count = userService.addUser(user2);
			if(count>0){
				String message ="ע��ɹ���";
				Map request=(Map)ActionContext.getContext().get("request");
				request.put("message",message);
				return "zhuceno";
			}else{
				String message ="ע��ʧ�ܣ�";
				Map request=(Map)ActionContext.getContext().get("request");
				request.put("message",message);
				return "zhuceno";
			}
		
		}
	}
	public String xiugai(){
		
		if(upass.equals("")||upass1.equals("")){
			String message ="����д�������ύ��";
			Map request=(Map)ActionContext.getContext().get("request");
			request.put("message",message);
			return "zhuceno";
		}else{
		Map session = ActionContext.getContext().getSession();
		session.get(user);
		if(!user.getUpass().trim().equals(upass)){
			String message ="ԭ�����������";
			Map request=(Map)ActionContext.getContext().get("request");
			request.put("message",message);
			return "zhuceno";
		}else{
		user.setUpass(upass1);
		boolean count = userService.updateUser(user);
		if(count){
			String message="�޸�����ɹ���";
			Map request=(Map)ActionContext.getContext().get("request");
			request.put("message",message);
			session.put("user", user);
			return "zhuceno";
		}else{
			String message="�޸�����ʧ�ܣ������³��ԣ�";
			Map request=(Map)ActionContext.getContext().get("request");
			request.put("message",message);
			return "zhuceno";
		}}}
	}
	public String tuichu(){
		Map session = ActionContext.getContext().getSession();
		session.put("user", null);
		return "nok";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public User getUser() {
		return user;
	}
















	public void setUname(String uname) {
		this.uname = uname;
	}
















	public String getUname() {
		return uname;
	}
















	public void setUpass(String upass) {
		this.upass = upass;
	}
















	public String getUpass() {
		return upass;
	}
















	public void setMessage(String message) {
		this.message = message;
	}
















	public String getMessage() {
		return message;
	}
	public void setUpass1(String upass1) {
		this.upass1 = upass1;
	}
	public String getUpass1() {
		return upass1;
	}
}
