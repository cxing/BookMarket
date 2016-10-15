package com.web.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.BlockJUnit4ClassRunner;

import com.web.basetest.UnitTestBase;
import com.web.entity.Category;

@RunWith(BlockJUnit4ClassRunner.class)
public class CategoryServiceImplTest extends UnitTestBase {

	public CategoryServiceImplTest() {
		super("classpath:spring/spring-*.xml");
	}

	@Test
	public void testListCategorys() {
		/*fail("Not yet implemented");*/
		CategoryService categoryService = super.getBean("categoryServiceImpl");
		
		List<Category> categorys = categoryService.getCategoryList();
		
		for (Category category : categorys) {
			System.out.println(category.toString());
		}
	}

}
