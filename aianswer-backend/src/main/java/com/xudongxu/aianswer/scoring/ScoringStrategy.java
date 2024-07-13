package com.xudongxu.aianswer.scoring;

import com.xudongxu.aianswer.model.entity.App;
import com.xudongxu.aianswer.model.entity.UserAnswer;

import java.util.List;

/**
 * 评分策略
 */
public interface ScoringStrategy {

    /**
     * 执行评分
     *
     * @param choices
     * @param app
     * @return
     * @throws Exception
     */
    UserAnswer doScore(List<String> choices, App app) throws Exception;
}