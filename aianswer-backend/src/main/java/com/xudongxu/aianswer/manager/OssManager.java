package com.xudongxu.aianswer.manager;

import com.aliyun.oss.OSS;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * @author 16871
 */
@Component
public class OssManager {

    @Resource
    private OSS ossClient;

    @Value("${aliyun.oss.bucketName}")
    private String bucketName;

    @Value("${aliyun.oss.domainName}")
    private String domainName;


    public String uploadFile(MultipartFile file) {
        // 获取原始文件名
        String originalFilename = file.getOriginalFilename();
        // 生成唯一文件名
        String fileName = UUID.randomUUID() + "-" + originalFilename;

        // 生成按日期组织的文件路径
        String datePath = new SimpleDateFormat("yyyy/MM/dd").format(new Date());
        String filePath = datePath + "/" + fileName;

        try (InputStream inputStream = file.getInputStream()) {
            // 上传文件到指定路径
            ossClient.putObject(bucketName, filePath, inputStream);
        } catch (IOException e) {
            throw new RuntimeException("上传文件失败", e);
        }
        return domainName+filePath;
    }
}
