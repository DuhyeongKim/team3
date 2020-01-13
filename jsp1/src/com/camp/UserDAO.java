package com.camp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO{
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		
       	try {
            //»ý¼ºÀÚ
            String dbURL="jdbc:mysql://db4free.net:3306/yondudb?useSSL=false&serverTimezone=UTC&characterEncoding=utf8";                             
            String dbID="yondu6484";
            String dbPassword="en!!4828585";
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL,dbID,dbPassword);
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
    public int join(User user){
        String SQL= "INSERT INTO USER VALUES(?, ?, ?, ?, ?) ";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1,user.getUserID());
            pstmt.setString(2,user.getUserPassword());
            pstmt.setString(3,user.getUserName());
            pstmt.setString(4,user.getUserGender());
            pstmt.setString(5,user.getUserEmail());
            return pstmt.executeUpdate();
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return -1;
    }
}