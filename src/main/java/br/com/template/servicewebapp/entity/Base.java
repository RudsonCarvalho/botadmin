package br.com.template.servicewebapp.entity;

import java.util.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
public abstract class Base {

	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
	private long id = 0;
	
	private String uuid;
	
	private boolean active;
	
	private Date dateInsert;
	
	private Date dateUpdate;
	
	private String userLog;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	public Date getDateInsert() {
		return dateInsert;
	}
	public void setDateInsert(Date dateInsert) {
		this.dateInsert = dateInsert;
	}
	public Date getDateUpdate() {
		return dateUpdate;
	}
	public void setDateUpdate(Date dateUpdate) {
		this.dateUpdate = dateUpdate;
	}
	public String getUserLog() {
		return userLog;
	}
	public void setUserLog(String userLog) {
		this.userLog = userLog;
	}
	
}
