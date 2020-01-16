package com.mycom.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.mycom.myapp.UserListResponseDTO;

@Repository("userListDAO")
public class UserListDAOImpl implements UserListDAO{
	
	@Override
	public List<UserListResponseDTO> getUserListdao(){
		System.out.println("dao call");
		
		List<UserListResponseDTO> userlist = new ArrayList<UserListResponseDTO>();
		
		
		UserListResponseDTO list = new UserListResponseDTO();
		list.setUserName("¿æµÎÇü");
		list.setUserAddress("°æ»óºÏµµ Æ÷Ç×½Ã");
		list.setUserAge("231");
		
		
		userlist.add(list);
	
	
		UserListResponseDTO list2 = new UserListResponseDTO();
		list.setUserName("¿æµÎÇü2");
		list.setUserAddress("°æ»ó2ºÏµµ Æ÷Ç×½Ã");
		list.setUserAge("232");
	
		
		userlist.add(list2);
		
		
		
		UserListResponseDTO list3 = new UserListResponseDTO();
		list.setUserName("¿æµÎÇü3");
		list.setUserAddress("°æ»ó3ºÏµµ Æ÷Ç×½Ã");
		list.setUserAge("233");

		
		userlist.add(list3);
		
		return userlist;
	
	
	}

}
