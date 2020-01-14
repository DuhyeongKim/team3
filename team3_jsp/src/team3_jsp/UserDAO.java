package team3_jsp;


import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  
import team3_jsp.User;  
public class UserDAO {  
  
public static Connection getConnection(){  
    Connection con=null;  
    try {
        //»ý¼ºÀÚ
        String dbURL="jdbc:mysql://db4free.net:3306/mydata_21300506?useSSL=false&serverTimezone=UTC&characterEncoding=utf8";                             
        String dbID="emawlrdl";
        String dbPassword="toddlf930";
        Class.forName("com.mysql.cj.jdbc.Driver");
        con=DriverManager.getConnection(dbURL,dbID,dbPassword);
    }
    catch(Exception e) {
        e.printStackTrace();
    } 
    return con;  
}  
public static int save(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into user(userID,userPassword,userName,userGender) values(?,?,?,?)");  
        ps.setString(1,u.getUserID());  
        ps.setString(2,u.getUserPassword());  
        ps.setString(3,u.getUserName());  
        ps.setString(4,u.getUserGender());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int update(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update user set userID=?,userPassword=?,userName=?,userGender=? where id=?");  
        ps.setString(1,u.getUserID());  
        ps.setString(2,u.getUserPassword());  
        ps.setString(3,u.getUserName());  
        ps.setString(4,u.getUserGender());  
        ps.setInt(5,u.getId()); 
        status=ps.executeUpdate();   
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int delete(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from user where id=?");  
        ps.setInt(1,u.getId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
  
    return status;  
}  
public static List<User> getAllRecords(){  
    List<User> list=new ArrayList<User>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from user");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            User u=new User();  
            u.setId(rs.getInt("id")); 
            u.setUserID(rs.getString("userID"));  
            u.setUserPassword(rs.getString("userPassword"));  
            u.setUserName(rs.getString("userName"));  
            u.setUserGender(rs.getString("userGender"));  
            list.add(u);  
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  
public static User getRecordById(int id){  
    User u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from user where id=?");  
        ps.setInt(1,id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new User();
            u.setId(rs.getInt("id")); 
            u.setUserID(rs.getString("userID"));  
            u.setUserPassword(rs.getString("userPassword"));  
            u.setUserName(rs.getString("userName"));  
            u.setUserGender(rs.getString("userGender"));    
        }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
}  
}  
        
