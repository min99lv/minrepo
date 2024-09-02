package com.example.minmybatis.model;

import java.util.Date;

import lombok.Data;

@Data
public class Business {
	private int businessId;
    private int sellerId;
    private String licenseNumber;
    private String licenseFilePath;
    private String businessName;
    private String businessType;
    private String address;
    private String phoneNumber;
    private Date createdAt;
    private Date updatedAt;
    private boolean isVerified;
	
	

}
