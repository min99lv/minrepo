package com.example.minmybatis.model;

import java.util.Date;

import lombok.Data;

@Data
public class Seller {
	private int sellerId;
    private String username;
    private String password;
    private String email;
    private String phoneNumber;
    private String businessLicenseNumber;
    private String businessName;
    private String address;
    private Date createdAt;
    private Date updatedAt;
    private boolean isActive;
    private boolean isVerified;
}
