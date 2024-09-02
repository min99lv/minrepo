package com.example.minmybatis.model;

import java.util.Date;

import lombok.Data;

@Data
public class Buyer {
	 private int buyerId;
	    private String username;
	    private String password;
	    private String email;
	    private String phoneNumber;
	    private String address;
	    private Date createdAt;
	    private Date updatedAt;
	    private boolean isActive;
}
