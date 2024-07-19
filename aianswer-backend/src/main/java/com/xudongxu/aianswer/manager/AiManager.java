package com.xudongxu.aianswer.manager;


import com.xudongxu.aianswer.common.ErrorCode;
import com.xudongxu.aianswer.exception.BusinessException;
import com.zhipu.oapi.ClientV4;
import com.zhipu.oapi.Constants;
import com.zhipu.oapi.service.v4.model.ChatCompletionRequest;
import com.zhipu.oapi.service.v4.model.ChatMessage;
import com.zhipu.oapi.service.v4.model.ChatMessageRole;
import com.zhipu.oapi.service.v4.model.ModelApiResponse;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * @author xudongxu
 */
@Component
public class AiManager {
    @Resource
    private ClientV4 clientV4;


    private static final Float STABLE_TEMPERATURE = 0.05f;
    private static final Float UNSTABLE_TEMPERATURE = 0.99f;
    /**
     * 同步回答
     *
     * @param userMessage
     * @param sysMessage
     * @return
     */
    public String doSyncUnStableRequest(String userMessage, String sysMessage) {
        return doRequest(userMessage, sysMessage, Boolean.FALSE, UNSTABLE_TEMPERATURE);
    }

    /**
     * 同步回答
     *
     * @param userMessage
     * @param sysMessage
     * @return
     */
    public String doSyncStableRequest(String userMessage, String sysMessage) {
        return doRequest(userMessage, sysMessage, Boolean.FALSE, STABLE_TEMPERATURE);
    }

    /**
     * 通用回答(系统用户)
     *
     * @param userMessage
     * @param sysMessage
     * @param temperature
     * @return
     */
    private String doRequest(String userMessage, String sysMessage, Boolean stream, Float temperature) {
        List<ChatMessage> messages = new ArrayList<>();
        ChatMessage sysChatMessage = new ChatMessage(ChatMessageRole.USER.value(), sysMessage);
        messages.add(sysChatMessage);
        ChatMessage userChatMessage = new ChatMessage(ChatMessageRole.USER.value(), userMessage);
        messages.add(userChatMessage);
        return doRequest(messages, stream, temperature);
    }

    /**
     * 通用回答
     *
     * @param messages
     * @param stream
     * @param temperature
     * @return
     */
    private String doRequest(List<ChatMessage> messages, Boolean stream, Float temperature) {
        ChatCompletionRequest chatCompletionRequest = ChatCompletionRequest.builder()
                .model(Constants.ModelChatGLM4)
                .stream(stream)
                .temperature(temperature)
                .invokeMethod(Constants.invokeMethod)
                .messages(messages)
                .build();
        try {
            ModelApiResponse invokeModelApiResp = clientV4.invokeModelApi(chatCompletionRequest);
            return invokeModelApiResp.getData().getChoices().get(0).toString();
        }catch (Exception e){
            e.printStackTrace();
            throw new BusinessException(ErrorCode.SYSTEM_ERROR,e.getMessage());
        }
    }
}
