package com.luv2code.springdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.luv2code.springdemo.dao.PurchasesDAO;
import com.luv2code.springdemo.entity.Purchases;

@Service
public class PurchasesServiceImpl implements PurchasesService {

	@Autowired
	private PurchasesDAO purchasesdao;
	
	@Override
	@Transactional
	public List<Purchases> getPurchases() {
		return purchasesdao.getPurchases();
	}

}
