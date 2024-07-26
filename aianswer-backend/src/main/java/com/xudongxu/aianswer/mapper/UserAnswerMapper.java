package com.xudongxu.aianswer.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.xudongxu.aianswer.model.dto.statistic.AppAnswerCountDTO;
import com.xudongxu.aianswer.model.dto.statistic.AppAnswerResultCountDTO;
import com.xudongxu.aianswer.model.entity.UserAnswer;

import java.util.List;

/**
 * @author 16871
 * @description 针对表【user_answer(用户答题记录)】的数据库操作Mapper
 * @createDate 2024-07-12 11:43:03
 * @Entity com.xudongxu.aianswer.model.entity.UserAnswer
 */
public interface UserAnswerMapper extends BaseMapper<UserAnswer> {

    List<AppAnswerCountDTO> doAppAnswerCount();

    List<AppAnswerResultCountDTO> doAppAnswerResultCount(Long appId);
}




