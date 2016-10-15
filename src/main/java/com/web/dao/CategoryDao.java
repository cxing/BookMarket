package com.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.web.entity.Category;

public interface CategoryDao {

	/**
	 * 查询所有类别
	 * 
	 * @param offset 查询起始位置
	 * @param limit 查询条数
	 * @return
	 */
	List<Category> queryAllCategory(@Param("offset") int offset, @Param("limit") int limit);
}
