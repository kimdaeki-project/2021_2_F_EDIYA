package com.kjl.fp.board.util;

import java.io.File;
import java.util.UUID;

import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class BoardFileManager {
	
	// 파일 저장
	public String fileSave(String filePath, MultipartFile multipartFile) throws Exception{
		
		String path = "static";
		
		ClassPathResource classPathResource = new ClassPathResource(path);
		
		File file = new File(classPathResource.getFile(), filePath);
		
		if(!file.exists()) {
			file.mkdirs();
		}
		
		String fileName = "";
		fileName = UUID.randomUUID().toString() + "_" + multipartFile.getOriginalFilename();
		file = new File(file, fileName);
		
		multipartFile.transferTo(file);
		
		return fileName;
	}
	
}
