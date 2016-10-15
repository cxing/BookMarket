package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.dao.CategoryDao;
import com.web.entity.Category;
import com.web.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {

	//注入service 依赖
	@Autowired
	private CategoryDao categoryDao;

	public List<Category> getCategoryList() {
		return categoryDao.queryAllCategory(0, 11);
	}
}
