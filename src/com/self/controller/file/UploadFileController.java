package com.self.controller.file;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.junit.Test;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

/**
 * @author rhy
 * @2018-1-29 下午5:16:29
 * @version v1.0
 */
@Controller
@RequestMapping("upload")
public class UploadFileController {

	@SuppressWarnings("unused")
	@RequestMapping("file")
	@ResponseBody
	public String uploadFile(HttpServletRequest request,HttpServletResponse response){
		
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
		
		List<MultipartFile> files = multipartHttpServletRequest.getFiles("file");
		
		for (MultipartFile multipartFile : files) {
			
			String filename = UUID.randomUUID().toString().replace("-", "");
			
			File f = new File("d:\\pic");
			if(!f.exists() && !f.isDirectory()){
				f.mkdirs();
			}
			File file = new File("d:\\pic\\"+filename+".jpg");
			
			try {
				multipartFile.transferTo(file);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
//		Map<String, MultipartFile> fileMap = multipartHttpServletRequest.getFileMap();
//		
//		for(Map.Entry<String, MultipartFile> map : fileMap.entrySet()){
//			
//			String key = map.getKey();
//			MultipartFile multipartFile = map.getValue();
//			String originalFilename = multipartFile.getOriginalFilename();
//			
//			String filename = UUID.randomUUID().toString().replace("-", "");
//			File file = new File("d:\\pic\\"+filename+".jpg");
//			try {
//				FileCopyUtils.copy(multipartFile.getBytes(), file);
//			} catch (IOException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		}
//		CommonsMultipartFile file = (CommonsMultipartFile)multipartHttpServletRequest.getFile("file");
		
//		File f = new File("d:\\pic");
//		if(!f.exists() && !f.isDirectory()){
//			f.mkdirs();
//		}
//		try {
//			FileCopyUtils.copy(file.getBytes(), new File("d:\\pic\\"+uuid+".jpg"));
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
		System.out.println("图片上传了");
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println();
		return "0";
	}
	
}
