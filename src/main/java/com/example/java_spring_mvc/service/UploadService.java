package com.example.java_spring_mvc.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.ServletContext;

@Service
public class UploadService {
    private final ServletContext servletContext;

    public UploadService(ServletContext servletContext) {
        this.servletContext = servletContext;
    }

    public String handleSaveUploadFile(MultipartFile file, String targetFolder) {
        System.out.println();
        try {
            if (file.isEmpty()) {
                return "";
            }

            String rootPath = servletContext.getRealPath("/resources/images");
            byte[] bytes = file.getBytes();

            /*
             * Tạo đối tượng File đại diện cho một thư mục (directory).
             * Đường dẫn thư mục được tạo bằng cách nối rootPath (đường dẫn gốc) với
             * targetFolder (tên thư mục đích).
             */
            File dir = new File(rootPath + File.separator + targetFolder);

            /* Kiểm tra thư mục đã tồn tại chưa, nếu chưa thì sẽ khởi tạo thư mục */
            if (!dir.exists()) {
                dir.mkdirs();
            }

            /*
             * Tạo đối tượng File đại diện cho tệp mới trong thư mục vừa tạo.
             * Đường dẫn tệp được xây dựng từ:
             * dir.getAbsolutePath(): Đường dẫn tuyệt đối của thư mục.
             * File.separator: Ký tự phân tách.
             * System.currentTimeMillis(): Lấy thời gian hiện tại tính bằng mili-giây từ
             * 01-01-1970, dùng để đảm bảo tên tệp là duy nhất.
             * file.getOriginalFilename(): Tên gốc của tệp tin, được lấy từ tệp tải lên.
             */
            String fileName = System.currentTimeMillis() + "_" + file.getOriginalFilename();
            File serverFile = new File(dir.getAbsolutePath() + File.separator + fileName);
            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
            stream.write(bytes);
            stream.close();

            return fileName;

        } catch (IOException e) {
            e.printStackTrace();

            return null;
        }
    }
}
