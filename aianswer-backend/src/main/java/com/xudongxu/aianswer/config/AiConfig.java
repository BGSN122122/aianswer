package com.xudongxu.aianswer.config;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.zhipu.oapi.ClientV4;
import com.zhipu.oapi.Constants;
import com.zhipu.oapi.service.v4.model.ChatCompletionRequest;
import com.zhipu.oapi.service.v4.model.ChatMessage;
import com.zhipu.oapi.service.v4.model.ChatMessageRole;
import com.zhipu.oapi.service.v4.model.ModelApiResponse;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.ArrayList;

/**
 * @author xudongxu
 */
@Configuration
@Data
@ConfigurationProperties("ai")
public class AiConfig {
    private String apiKey;

    @Bean
    ClientV4 clientV4(){
       return new ClientV4.Builder(apiKey).build();
    }
}
