package Model;

import java.util.Date;

//import java.sql.Date;

public class Chat {
private String id;
private String msg;
private Date postedOn;
Users postedBy;
public Chat() {
	super();
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getMsg() {
	return msg;
}
public void setMsg(String msg) {
	this.msg = msg;
}
public Date getPostedOn() {
	return postedOn;
}
public void setPostedOn(Date postedOn) {
	this.postedOn = postedOn;
}
public Chat(String msg, Date postedOn) {
	super();
	this.msg = msg;
	this.postedOn = postedOn;
}
}
