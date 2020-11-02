package servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/upload.do")
public class Upload extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		ServletContext application = req.getServletContext();
		
		String root = application.getRealPath("/");
		
		String uploadPath = root+"upload";
		String filePath = root+"file";
		
		MultipartRequest mr = new MultipartRequest(req, uploadPath, 1024*1024*300, "UTF-8", new DefaultFileRenamePolicy());
		
		String file = mr.getFilesystemName("file");
		
		String source = uploadPath+File.separator+file;
		String target = filePath+File.separator+file;
	}
}
