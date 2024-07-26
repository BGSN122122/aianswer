package com.xudongxu.aianswer.controller;

import com.xudongxu.aianswer.common.BaseResponse;
import com.xudongxu.aianswer.common.ErrorCode;
import com.xudongxu.aianswer.common.ResultUtils;
import com.xudongxu.aianswer.exception.ThrowUtils;
import com.xudongxu.aianswer.mapper.UserAnswerMapper;
import com.xudongxu.aianswer.model.dto.statistic.AppAnswerCountDTO;
import com.xudongxu.aianswer.model.dto.statistic.AppAnswerResultCountDTO;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author 16871
 */
@RestController
@RequestMapping("/app/statistic")
public class AppStatisticController {
    @Resource
    UserAnswerMapper userAnswerMapper;

    @GetMapping("/answer_count")
    public BaseResponse<List<AppAnswerCountDTO>> getAppAnswerCount(){
        return ResultUtils.success(userAnswerMapper.doAppAnswerCount());
    }
    @GetMapping("/answer_result_count")
    public BaseResponse<List<AppAnswerResultCountDTO>> getAppAnswerResultCount(Long appId){
        ThrowUtils.throwIf(appId == null || appId < 0, ErrorCode.PARAMS_ERROR);
        return ResultUtils.success(userAnswerMapper.doAppAnswerResultCount(appId));
    }


}
