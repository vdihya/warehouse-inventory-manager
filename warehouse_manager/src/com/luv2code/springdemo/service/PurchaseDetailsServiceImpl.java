package com.luv2code.springdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.luv2code.springdemo.dao.PurchaseDetailsDAO;
import com.luv2code.springdemo.entity.PurchaseDetails;

@Service
public class PurchaseDetailsServiceImpl implements PurchaseDetailsService {

	@Autowired
	private PurchaseDetailsDAO purchasedetailsdao;
	@Override
	@Transactional
	public List<PurchaseDetails> getPurchaseDetails() {
		return purchasedetailsdao.getPurchaseDetails();
	}

}
