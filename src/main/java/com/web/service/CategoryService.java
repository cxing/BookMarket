package com.web.service;

import java.util.List;

import com.web.entity.Category;

public interface CategoryService {
	/**
	 * 查询所有图书
	 * 
	 * @return
	 */
	List<Category> getCategoryList();
}
