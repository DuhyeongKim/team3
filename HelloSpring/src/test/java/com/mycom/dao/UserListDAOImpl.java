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
		list.setUserName("�����");
		list.setUserAddress("���ϵ� ���׽�");
		list.setUserAge("231");
		
		
		userlist.add(list);
	
	
		UserListResponseDTO list2 = new UserListResponseDTO();
		list.setUserName("�����2");
		list.setUserAddress("���2�ϵ� ���׽�");
		list.setUserAge("232");
	
		
		userlist.add(list2);
		
		
		
		UserListResponseDTO list3 = new UserListResponseDTO();
		list.setUserName("�����3");
		list.setUserAddress("���3�ϵ� ���׽�");
		list.setUserAge("233");

		
		userlist.add(list3);
		
		return userlist;
	
	
	}

}
