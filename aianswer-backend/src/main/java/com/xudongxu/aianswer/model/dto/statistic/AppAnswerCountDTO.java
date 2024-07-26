package com.xudongxu.aianswer.model.dto.statistic;

import lombok.Data;

/**
 * @author 16871
 */
@Data
public class AppAnswerCountDTO {

    private Long appId;
    private String appName;
    private Long answerCount;
}
