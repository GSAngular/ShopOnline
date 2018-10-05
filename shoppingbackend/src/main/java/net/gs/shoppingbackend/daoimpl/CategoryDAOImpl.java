package net.gs.shoppingbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import net.gs.shoppingbackend.dao.CategoryDAO;
import net.gs.shoppingbackend.dto.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

	
	private static List<Category>categories=new ArrayList<>();
	
	static {
		
		Category category=new Category();
		
		//adding first category
		category.setId(1);
		category.setName("TShirt");
		category.setDescription("Description goes here Tshirt");
		category.setImageURL("pic1.png");
		
		categories.add(category);
		//adding second category
		category=new Category();
		category.setId(2);
		category.setName("Mug");
		category.setDescription("Description goes here mug");
		category.setImageURL("pic2.png");
				
		categories.add(category);
				
		//adding third category
		category=new Category();
		category.setId(3);
		category.setName("Bagpack");
		category.setDescription("Description goes here Bagpack");
		category.setImageURL("pic3.png");
				
		 categories.add(category);
	}
	
	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categories;
	}

	@Override
	public Category get(int id) {
		// enhanced for loop for each categories
		for(Category category: categories)
		{
			if(category.getId()==id)
				return category;
		}
		return null;
	}

}