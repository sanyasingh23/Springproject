package com.example.demo;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Blogs {
 
	@Id
	int bid;
	String btitle;
	String bdescription;
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBdescription() {
		return bdescription;
	}
	public void setBdescription(String bdescription) {
		this.bdescription = bdescription;
	}
	@Override
	public String toString() {
		return "Blogs [bid=" + bid + ", btitle=" + btitle + ", bdescription=" + bdescription + "]";
	}
	
}
