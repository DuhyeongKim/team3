package com.camp;


import java.io.File;
import java.io.IOException;
import java.util.List;
 
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
 
public class guru_upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public guru_upload() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(ServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		        if(org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload.isMultipartContent((HttpServletRequest) request)){
		            try {
		                List <FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest((RequestContext) request);
		                for(FileItem item : multiparts){
		                    if(!item.isFormField()){
		                        String name = new File(item.getName()).getName();
		                        item.write( new File("c:/guru/upload" + File.separator + name));
		                    }
		                }
		               //File uploaded successfully
		               ((ServletRequest) request).setAttribute("gurumessage", "File Uploaded Successfully");
		            } catch (Exception ex) {
		               ((ServletRequest) request).setAttribute("gurumessage", "File Upload Failed due to " + ex);
		            }         		
		        }else{
		
		            ((ServletRequest) request).setAttribute("gurumessage","No File found");
 }
		        ((ServletRequest) request).getRequestDispatcher("/result.jsp").forward(request, response);
		
		    }
 
 
}