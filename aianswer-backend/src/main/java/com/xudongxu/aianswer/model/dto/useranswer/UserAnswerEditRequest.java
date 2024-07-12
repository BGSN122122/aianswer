package com.xudongxu.aianswer.model.dto.useranswer;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * 编辑用户答题记录请求
 *
 * @author xudongxu
 *
 */
@Data
public class UserAnswerEditRequest implements Serializable {
    /**
     *
     */
    private Long id;

    /**
     * 应用 id
     */
    private Long appId;
    /**
     * 用户答案（JSON 数组）
     */
    private List<String> choices;

    private static final long serialVersionUID = 1L;
}