package com.defysope.model;

import org.springframework.web.multipart.MultipartFile;

public class ProductAttachment {
	private MultipartFile file;

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	

}
