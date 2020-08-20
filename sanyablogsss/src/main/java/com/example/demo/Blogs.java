package com.example.demo;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Blogs {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	int bno;
	String btitle;
	String bdesc;
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBdesc() {
		return bdesc;
	}
	public void setBdesc(String bdesc) {
		this.bdesc = bdesc;
	}
	@Override
	public String toString() {
		return "Blogs [bno=" + bno + ", btitle=" + btitle + ", bdesc=" + bdesc + "]";
	}
	
	
	
}
