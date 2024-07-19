package com.xudongxu.aianswer.model.dto.question;

import lombok.Data;

/**
 * @author xudongxu
 */
@Data
public class QuestionAnswerDTO {
    /**
     * 题目
     */
    private String title;

    /**
     * 用户答案
     */
    private String userAnswer;
}
