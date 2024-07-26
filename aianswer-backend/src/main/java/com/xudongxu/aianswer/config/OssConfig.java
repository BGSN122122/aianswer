package com.xudongxu.aianswer.config;

import com.aliyun.oss.OSS;
import com.aliyun.oss.OSSClientBuilder;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @author 16871
 */
@Configuration
@ConfigurationProperties(prefix = "aliyun.oss")
@Data
public class OssConfig {
    private String accessKeyId;
    private String secretKeySecret;
    private String endpoint;
    private String bucketName;

    @Bean
    public OSS ossClient() {
        return new OSSClientBuilder().build(endpoint, accessKeyId, secretKeySecret);
    }
}
