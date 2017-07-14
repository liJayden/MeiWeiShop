package com.etc.bean;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class Msg implements Serializable{
	//״̬�� 100-�ɹ� 200-ʧ��
	private int code;
	//��ʾ��Ϣ
	private String msg;
	//�û�Ҫ���ظ������������
	private Map<String,Object> map=new HashMap<String, Object>();
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Map<String, Object> getMap() {
		return map;
	}
	public void setMap(Map<String, Object> map) {
		this.map = map;
	}
	
	public static Msg success(){
		Msg msg=new Msg();
		msg.setCode(100);
		msg.setMsg("�ɹ�");
		return msg;
	}
	
	public static Msg error(){
		Msg msg=new Msg();
		msg.setCode(200);
		msg.setMsg("ʧ��");
		return msg;
	}
	
    public Msg add(String key,Object value){
    	map.put(key, value);
    	return this;
    	
    }
}



















