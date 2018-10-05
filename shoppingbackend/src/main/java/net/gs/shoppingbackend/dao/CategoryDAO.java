package net.gs.shoppingbackend.dao;

import java.util.List;

import net.gs.shoppingbackend.dto.Category;

public interface CategoryDAO {

	List<Category>list();

	Category get(int id);
	
}
