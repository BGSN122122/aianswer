/*
 Navicat Premium Data Transfer

 Source Server         : aliyun
 Source Server Type    : MySQL
 Source Server Version : 80024
 Source Host           : 47.238.107.17:3306
 Source Schema         : aianswer

 Target Server Type    : MySQL
 Target Server Version : 80024
 File Encoding         : 65001

 Date: 02/08/2024 16:37:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app
-- ----------------------------
DROP TABLE IF EXISTS `app`;
CREATE TABLE `app`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `appName` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '应用名',
  `appDesc` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '应用描述',
  `appIcon` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '应用图标',
  `appType` tinyint NOT NULL DEFAULT 0 COMMENT '应用类型（0-得分类，1-测评类）',
  `scoringStrategy` tinyint NOT NULL DEFAULT 0 COMMENT '评分策略（0-自定义，1-AI）',
  `reviewStatus` int NOT NULL DEFAULT 0 COMMENT '审核状态：0-待审核, 1-通过, 2-拒绝',
  `reviewMessage` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核信息',
  `reviewerId` bigint NULL DEFAULT NULL COMMENT '审核人 id',
  `reviewTime` datetime NULL DEFAULT NULL COMMENT '审核时间',
  `userId` bigint NOT NULL COMMENT '创建用户 id',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_appName`(`appName` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1817528956957908995 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '应用' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app
-- ----------------------------
INSERT INTO `app` VALUES (1, 'MBTI性格测试(自定义评分)', '测试性格', 'https://answer-ai.oss-cn-hongkong.aliyuncs.com/2024/07/28/8d462c1a-63ba-455c-9c92-dae1cc1b425a-Snipaste_2024-07-28_11-03-22.png', 1, 0, 1, NULL, NULL, NULL, 1, '2024-04-24 15:58:05', '2024-07-28 11:06:43', 0);
INSERT INTO `app` VALUES (2, '首都知识测试', '测试你对各国首都的了解成都', 'https://answer-ai.oss-cn-hongkong.aliyuncs.com/2024/07/28/a47c3ca4-b0ff-4065-800b-acb25827255c-Snipaste_2024-07-28_11-05-34.png', 0, 0, 1, NULL, NULL, NULL, 1, '2024-04-25 11:39:30', '2024-07-28 11:09:38', 0);
INSERT INTO `app` VALUES (3, 'MBTI 性格测试（AI评分）', '测试你是16种性格的哪一种', 'https://answer-ai.oss-cn-hongkong.aliyuncs.com/2024/07/28/843f9a5d-5a4d-4877-bbc1-1f6a526557d9-Snipaste_2024-07-28_11-02-54.png', 1, 1, 1, NULL, NULL, NULL, 1, '2024-04-26 16:38:12', '2024-07-28 11:13:35', 0);
INSERT INTO `app` VALUES (4, '网络热词测试', '测试你是否了解网络热门词汇', 'https://answer-ai.oss-cn-hongkong.aliyuncs.com/2024/07/28/272f7bc0-ca57-4ff8-941a-1f623dd97020-Snipaste_2024-07-28_11-03-18.png', 0, 0, 1, NULL, NULL, NULL, 1, '2024-04-26 16:38:56', '2024-07-28 11:18:34', 0);
INSERT INTO `app` VALUES (1813891409832394754, 'MBTi 性格测试(AI生成题目)', '测试你是16种性格的哪一种', 'https://answer-ai.oss-cn-hongkong.aliyuncs.com/2024/07/26/7428a61a-0aae-4464-9456-8b1b291b9dae-Snipaste_2024-07-26_12-34-26.png', 1, 1, 1, '', 1, '2024-07-18 19:07:26', 1, '2024-07-18 18:59:39', '2024-07-28 11:32:28', 0);
INSERT INTO `app` VALUES (1814226908396687361, '员工心理测评', '测评员工的心理健康状态', 'https://answer-ai.oss-cn-hongkong.aliyuncs.com/2024/07/26/54315b95-7625-414e-ab2e-c82de52ae094-Snipaste_2024-07-26_12-37-15.png', 1, 1, 1, '', 1, '2024-07-19 17:13:16', 1, '2024-07-19 17:12:48', '2024-07-26 12:38:00', 0);
INSERT INTO `app` VALUES (1816383478601699329, '大学生智力测评', '对大学生智力进行测评', 'https://answer-ai.oss-cn-hongkong.aliyuncs.com/2024/07/26/d5bc9873-78b2-4800-b873-67b8dc5aa069-Snipaste_2024-07-26_12-43-41.png', 1, 1, 1, '', 1, '2024-07-25 08:02:30', 1, '2024-07-25 16:02:05', '2024-07-28 11:40:13', 0);
INSERT INTO `app` VALUES (1816733969638588417, '测试', '测试', '', 0, 0, 0, NULL, NULL, NULL, 1, '2024-07-26 15:15:06', '2024-07-26 15:15:25', 1);
INSERT INTO `app` VALUES (1817405560798511105, '电脑硬件知识测试', '测试你对电脑硬件知识了解程度', 'https://answer-ai.oss-cn-hongkong.aliyuncs.com/2024/07/28/138a92f4-db9f-441d-90b1-16fd81551c85-Snipaste_2024-07-28_11-45-22.png', 1, 1, 1, '', 1, '2024-07-28 06:00:49', 1, '2024-07-28 11:43:46', '2024-07-28 14:00:49', 0);
INSERT INTO `app` VALUES (1817406994499698690, 'java基础知识测试', '测试你对Java基础知识的了解程度', 'https://answer-ai.oss-cn-hongkong.aliyuncs.com/2024/07/28/0abda5af-114c-4d19-bf13-8dd0b18a7d27-Snipaste_2024-07-28_11-49-12.png', 1, 1, 1, '', 1, '2024-07-28 06:00:50', 1, '2024-07-28 11:49:27', '2024-07-28 14:00:49', 0);
INSERT INTO `app` VALUES (1817528956957908994, 'AI知识测试', '测试你对AI的了解', 'https://answer-ai.oss-cn-hongkong.aliyuncs.com/2024/07/28/55dbfd40-00ac-46bb-aa41-821fc5946e17-Snipaste_2024-07-28_19-56-02.png', 1, 1, 1, NULL, NULL, NULL, 1, '2024-07-28 19:54:06', '2024-07-28 19:56:17', 0);

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `questionContent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '题目内容（json格式）',
  `appId` bigint NOT NULL COMMENT '应用 id',
  `userId` bigint NOT NULL COMMENT '创建用户 id',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_appId`(`appId` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1817529647038357506 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '题目' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (1, '[{\"options\":[{\"result\":\"I\",\"value\":\"独自工作\",\"key\":\"A\"},{\"result\":\"E\",\"value\":\"与他人合作\",\"key\":\"B\"}],\"title\":\"1. 你通常更喜欢\"},{\"options\":[{\"result\":\"J\",\"value\":\"喜欢有明确的计划\",\"key\":\"A\"},{\"result\":\"P\",\"value\":\"更愿意随机应变\",\"key\":\"B\"}],\"title\":\"2. 当安排活动时\"},{\"options\":[{\"result\":\"T\",\"value\":\"认为应该严格遵守\",\"key\":\"A\"},{\"result\":\"F\",\"value\":\"认为应灵活运用\",\"key\":\"B\"}],\"title\":\"3. 你如何看待规则\"},{\"options\":[{\"result\":\"E\",\"value\":\"经常是说话的人\",\"key\":\"A\"},{\"result\":\"I\",\"value\":\"更倾向于倾听\",\"key\":\"B\"}],\"title\":\"4. 在社交场合中\"},{\"options\":[{\"result\":\"J\",\"value\":\"先研究再行动\",\"key\":\"A\"},{\"result\":\"P\",\"value\":\"边做边学习\",\"key\":\"B\"}],\"title\":\"5. 面对新的挑战\"},{\"options\":[{\"result\":\"S\",\"value\":\"注重细节和事实\",\"key\":\"A\"},{\"result\":\"N\",\"value\":\"注重概念和想象\",\"key\":\"B\"}],\"title\":\"6. 在日常生活中\"},{\"options\":[{\"result\":\"T\",\"value\":\"更多基于逻辑分析\",\"key\":\"A\"},{\"result\":\"F\",\"value\":\"更多基于个人情感\",\"key\":\"B\"}],\"title\":\"7. 做决定时\"},{\"options\":[{\"result\":\"S\",\"value\":\"喜欢有结构和常规\",\"key\":\"A\"},{\"result\":\"N\",\"value\":\"喜欢自由和灵活性\",\"key\":\"B\"}],\"title\":\"8. 对于日常安排\"},{\"options\":[{\"result\":\"P\",\"value\":\"首先考虑可能性\",\"key\":\"A\"},{\"result\":\"J\",\"value\":\"首先考虑后果\",\"key\":\"B\"}],\"title\":\"9. 当遇到问题时\"},{\"options\":[{\"result\":\"T\",\"value\":\"时间是一种宝贵的资源\",\"key\":\"A\"},{\"result\":\"F\",\"value\":\"时间是相对灵活的概念\",\"key\":\"B\"}],\"title\":\"10. 你如何看待时间\"}]', 1, 1, '2024-04-24 16:41:53', '2024-05-09 12:28:58', 0);
INSERT INTO `question` VALUES (2, '[{\"options\":[{\"score\":0,\"value\":\"利马\",\"key\":\"A\"},{\"score\":0,\"value\":\"圣多明各\",\"key\":\"B\"},{\"score\":0,\"value\":\"圣萨尔瓦多\",\"key\":\"C\"},{\"score\":1,\"value\":\"波哥大\",\"key\":\"D\"}],\"title\":\"哥伦比亚的首都是?\"},{\"options\":[{\"score\":0,\"value\":\"蒙特利尔\",\"key\":\"A\"},{\"score\":0,\"value\":\"多伦多\",\"key\":\"B\"},{\"score\":1,\"value\":\"渥太华\",\"key\":\"C\"},{\"score\":0,\"value\":\"温哥华\",\"key\":\"D\"}],\"title\":\"加拿大的首都是?\"},{\"options\":[{\"score\":0,\"value\":\"大阪\",\"key\":\"A\"},{\"score\":1,\"value\":\"东京\",\"key\":\"B\"},{\"score\":0,\"value\":\"京都\",\"key\":\"C\"},{\"score\":0,\"value\":\"名古屋\",\"key\":\"D\"}],\"title\":\"日本的首都是?\"},{\"options\":[{\"score\":0,\"value\":\"墨尔本\",\"key\":\"A\"},{\"score\":0,\"value\":\"悉尼\",\"key\":\"B\"},{\"score\":0,\"value\":\"布里斯班\",\"key\":\"C\"},{\"score\":1,\"value\":\"堪培拉\",\"key\":\"D\"}],\"title\":\"澳大利亚的首都是?\"},{\"options\":[{\"score\":1,\"value\":\"雅加达\",\"key\":\"A\"},{\"score\":0,\"value\":\"曼谷\",\"key\":\"B\"},{\"score\":0,\"value\":\"胡志明市\",\"key\":\"C\"},{\"score\":0,\"value\":\"吉隆坡\",\"key\":\"D\"}],\"title\":\"印度尼西亚的首都是?\"},{\"options\":[{\"score\":0,\"value\":\"上海\",\"key\":\"A\"},{\"score\":0,\"value\":\"杭州\",\"key\":\"B\"},{\"score\":1,\"value\":\"北京\",\"key\":\"C\"},{\"score\":0,\"value\":\"广州\",\"key\":\"D\"}],\"title\":\"中国的首都是?\"},{\"options\":[{\"score\":0,\"value\":\"汉堡\",\"key\":\"A\"},{\"score\":0,\"value\":\"慕尼黑\",\"key\":\"B\"},{\"score\":1,\"value\":\"柏林\",\"key\":\"C\"},{\"score\":0,\"value\":\"科隆\",\"key\":\"D\"}],\"title\":\"德国的首都是?\"},{\"options\":[{\"score\":0,\"value\":\"釜山\",\"key\":\"A\"},{\"score\":1,\"value\":\"首尔\",\"key\":\"B\"},{\"score\":0,\"value\":\"大田\",\"key\":\"C\"},{\"score\":0,\"value\":\"仁川\",\"key\":\"D\"}],\"title\":\"韩国的首都是?\"},{\"options\":[{\"score\":0,\"value\":\"瓜达拉哈拉\",\"key\":\"A\"},{\"score\":0,\"value\":\"蒙特雷\",\"key\":\"B\"},{\"score\":1,\"value\":\"墨西哥城\",\"key\":\"C\"},{\"score\":0,\"value\":\"坎昆\",\"key\":\"D\"}],\"title\":\"墨西哥的首都是?\"},{\"options\":[{\"score\":1,\"value\":\"开罗\",\"key\":\"A\"},{\"score\":0,\"value\":\"亚历山大\",\"key\":\"B\"},{\"score\":0,\"value\":\"卢克索\",\"key\":\"C\"},{\"score\":0,\"value\":\"卡利乌比亚\",\"key\":\"D\"}],\"title\":\"埃及的首都是?\"}]', 2, 1, '2024-04-25 15:03:07', '2024-05-09 12:28:58', 0);
INSERT INTO `question` VALUES (3, '[{\"title\":\"你通常更喜欢\",\"options\":[{\"result\":\"I\",\"score\":0,\"value\":\"独自工作\",\"key\":\"A\"},{\"result\":\"E\",\"score\":0,\"value\":\"与他人合作\",\"key\":\"B\"}]},{\"title\":\"当安排活动时\",\"options\":[{\"result\":\"J\",\"score\":0,\"value\":\"喜欢有明确的计划\",\"key\":\"A\"},{\"result\":\"P\",\"score\":0,\"value\":\"更愿意随机应变\",\"key\":\"B\"}]},{\"title\":\"你如何看待规则\",\"options\":[{\"result\":\"T\",\"score\":0,\"value\":\"认为应该严格遵守\",\"key\":\"A\"},{\"result\":\"F\",\"score\":0,\"value\":\"认为应灵活运用\",\"key\":\"B\"}]},{\"title\":\"在社交场合中\",\"options\":[{\"result\":\"E\",\"score\":0,\"value\":\"经常是说话的人\",\"key\":\"A\"},{\"result\":\"I\",\"score\":0,\"value\":\"更倾向于倾听\",\"key\":\"B\"}]},{\"title\":\"面对新的挑战\",\"options\":[{\"result\":\"J\",\"score\":0,\"value\":\"先研究再行动\",\"key\":\"A\"},{\"result\":\"P\",\"score\":0,\"value\":\"边做边学习\",\"key\":\"B\"}]},{\"title\":\"在日常生活中\",\"options\":[{\"result\":\"S\",\"score\":0,\"value\":\"注重细节和事实\",\"key\":\"A\"},{\"result\":\"N\",\"score\":0,\"value\":\"注重概念和想象\",\"key\":\"B\"}]},{\"title\":\"做决定时\",\"options\":[{\"result\":\"T\",\"score\":0,\"value\":\"更多基于逻辑分析\",\"key\":\"A\"},{\"result\":\"F\",\"score\":0,\"value\":\"更多基于个人情感\",\"key\":\"B\"}]},{\"title\":\"对于日常安排\",\"options\":[{\"result\":\"S\",\"score\":0,\"value\":\"喜欢有结构和常规\",\"key\":\"A\"},{\"result\":\"N\",\"score\":0,\"value\":\"喜欢自由和灵活性\",\"key\":\"B\"}]},{\"title\":\"当遇到问题时\",\"options\":[{\"result\":\"P\",\"score\":0,\"value\":\"首先考虑可能性\",\"key\":\"A\"},{\"result\":\"J\",\"score\":0,\"value\":\"首先考虑后果\",\"key\":\"B\"}]},{\"title\":\"你如何看待时间\",\"options\":[{\"result\":\"T\",\"score\":0,\"value\":\"时间是一种宝贵的资源\",\"key\":\"A\"},{\"result\":\"F\",\"score\":0,\"value\":\"时间是相对灵活的概念\",\"key\":\"B\"}]}]', 3, 1, '2024-04-26 16:39:29', '2024-07-28 11:12:16', 0);
INSERT INTO `question` VALUES (4, '[{\"title\":\"下列哪个是表达在网络聊天中互相发送搞笑图片的行为？\",\"options\":[{\"score\":10,\"value\":\"斗图\",\"key\":\"A\"},{\"score\":0,\"value\":\"抖音\",\"key\":\"B\"}]},{\"title\":\"通常用来指代一个人在网络上塑造的形象的是？\",\"options\":[{\"score\":10,\"value\":\"人设\",\"key\":\"A\"},{\"score\":0,\"value\":\"吃瓜\",\"key\":\"B\"}]},{\"title\":\"形容那些在网络上发表强硬言论，现实中却很少行动的人的词汇是？\",\"options\":[{\"score\":10,\"value\":\"键盘侠\",\"key\":\"A\"},{\"score\":0,\"value\":\"网红\",\"key\":\"B\"}]},{\"title\":\"以下哪个词描述了网络红人在直播过程中推销商品的行为？\",\"options\":[{\"score\":10,\"value\":\"带货\",\"key\":\"A\"},{\"score\":0,\"value\":\"直播\",\"key\":\"B\"}]},{\"title\":\"以下哪个词指的是通过网络进行的教育课程？\",\"options\":[{\"score\":10,\"value\":\"网课\",\"key\":\"A\"},{\"score\":0,\"value\":\"网游\",\"key\":\"B\"}]},{\"title\":\"被认为是未来金融技术发展的重要基础的词汇是？\",\"options\":[{\"score\":10,\"value\":\"区块链\",\"key\":\"A\"},{\"score\":0,\"value\":\"比特币\",\"key\":\"B\"}]},{\"title\":\"以下哪个词代表第五代移动通信技术？\",\"options\":[{\"score\":10,\"value\":\"5G\",\"key\":\"A\"},{\"score\":0,\"value\":\"AI\",\"key\":\"B\"}]},{\"title\":\"用于描述海量数据集合的词汇是？\",\"options\":[{\"score\":10,\"value\":\"大数据\",\"key\":\"A\"},{\"score\":0,\"value\":\"云计算\",\"key\":\"B\"}]},{\"title\":\"指物与物之间通过互联网进行信息交换和通信的网络是？\",\"options\":[{\"score\":10,\"value\":\"物联网\",\"key\":\"A\"},{\"score\":0,\"value\":\"移动互联网\",\"key\":\"B\"}]},{\"title\":\"以下哪个词代表电子竞技运动？\",\"options\":[{\"score\":10,\"value\":\"电竞\",\"key\":\"A\"},{\"score\":0,\"value\":\"ACG\",\"key\":\"B\"}]}]', 4, 1, '2024-04-26 16:39:29', '2024-07-28 11:20:55', 0);
INSERT INTO `question` VALUES (1813895633022566402, '[{\"title\":\"做决定时，你通常：\",\"options\":[{\"score\":0,\"value\":\"我通常先做决定再思考后果。\",\"key\":\"A\"},{\"score\":0,\"value\":\"我总是考虑所有可能的后果再做决定。\",\"key\":\"B\"}]},{\"title\":\"在工作或学习中，你倾向于：\",\"options\":[{\"score\":0,\"value\":\"我更愿意与一群人一起工作。\",\"key\":\"A\"},{\"score\":0,\"value\":\"我更喜欢单独工作。\",\"key\":\"B\"}]},{\"title\":\"评估问题时，你更可能：\",\"options\":[{\"score\":0,\"value\":\"我经常根据情感和价值观来评估情况。\",\"key\":\"A\"},{\"score\":0,\"value\":\"我通常根据逻辑和事实来评估情况。\",\"key\":\"B\"}]},{\"title\":\"面对新的活动或挑战时，你通常：\",\"options\":[{\"score\":0,\"value\":\"我经常参与新的和有挑战性的活动。\",\"key\":\"A\"},{\"score\":0,\"value\":\"我通常坚持已知的和熟悉的活动。\",\"key\":\"B\"}]},{\"title\":\"社交场合中，你更倾向于：\",\"options\":[{\"score\":0,\"value\":\"我经常主动开始与他人的对话。\",\"key\":\"A\"},{\"score\":0,\"value\":\"我通常等待他人来与我交谈。\",\"key\":\"B\"}]},{\"title\":\"计划活动时，你通常：\",\"options\":[{\"score\":0,\"value\":\"我喜欢详细规划和组织我的活动。\",\"key\":\"A\"},{\"score\":0,\"value\":\"我更喜欢灵活安排和即兴处理活动。\",\"key\":\"B\"}]},{\"title\":\"处理任务时，你更注重：\",\"options\":[{\"score\":0,\"value\":\"我经常关注大局，而不是细节。\",\"key\":\"A\"},{\"score\":0,\"value\":\"我经常关注细节，以确保完美。\",\"key\":\"B\"}]},{\"title\":\"面对变化时，你通常：\",\"options\":[{\"score\":0,\"value\":\"我通常很随和，适应性强。\",\"key\":\"A\"},{\"score\":0,\"value\":\"我有很强的原则性，不太容易妥协。\",\"key\":\"B\"}]},{\"title\":\"在表达自己方面，你更倾向于：\",\"options\":[{\"score\":0,\"value\":\"我更愿意表达我的想法和感受。\",\"key\":\"A\"},{\"score\":0,\"value\":\"我更倾向于保留我的想法和感受。\",\"key\":\"B\"}]},{\"title\":\"当他人遇到困难时，你通常：\",\"options\":[{\"score\":0,\"value\":\"我经常帮助他人解决问题。\",\"key\":\"A\"},{\"score\":0,\"value\":\"我通常让他人自己解决问题。\",\"key\":\"B\"}]}]', 1813891409832394754, 1, '2024-07-18 19:16:26', '2024-07-28 11:31:52', 0);
INSERT INTO `question` VALUES (1814575582452731906, '[{\"title\":\"我经常感到工作压力很大\",\"options\":[{\"score\":0,\"value\":\"是\",\"key\":\"A\"},{\"score\":0,\"value\":\"否\",\"key\":\"B\"}]},{\"title\":\"在与同事交流时，我感到轻松自在\",\"options\":[{\"score\":0,\"value\":\"是\",\"key\":\"A\"},{\"score\":0,\"value\":\"否\",\"key\":\"B\"}]},{\"title\":\"我能够很好地处理个人与工作之间的平衡\",\"options\":[{\"score\":0,\"value\":\"是\",\"key\":\"A\"},{\"score\":0,\"value\":\"否\",\"key\":\"B\"}]},{\"title\":\"我经常感到疲惫，缺乏活力\",\"options\":[{\"score\":0,\"value\":\"是\",\"key\":\"A\"},{\"score\":0,\"value\":\"否\",\"key\":\"B\"}]},{\"title\":\"面对困难时，我能够保持积极乐观的态度\",\"options\":[{\"score\":0,\"value\":\"是\",\"key\":\"A\"},{\"score\":0,\"value\":\"否\",\"key\":\"B\"}]},{\"title\":\"我很少感到焦虑或不安\",\"options\":[{\"score\":0,\"value\":\"是\",\"key\":\"A\"},{\"score\":0,\"value\":\"否\",\"key\":\"B\"}]},{\"title\":\"在工作中，我能够集中注意力\",\"options\":[{\"score\":0,\"value\":\"是\",\"key\":\"A\"},{\"score\":0,\"value\":\"否\",\"key\":\"B\"}]},{\"title\":\"我对自己的工作成果感到满意\",\"options\":[{\"score\":0,\"value\":\"是\",\"key\":\"A\"},{\"score\":0,\"value\":\"否\",\"key\":\"B\"}]},{\"title\":\"我经常与同事发生冲突\",\"options\":[{\"score\":0,\"value\":\"是\",\"key\":\"A\"},{\"score\":0,\"value\":\"否\",\"key\":\"B\"}]},{\"title\":\"我能够适应工作中的变化\",\"options\":[{\"score\":0,\"value\":\"是\",\"key\":\"A\"},{\"score\":0,\"value\":\"否\",\"key\":\"B\"}]}]', 1814226908396687361, 1, '2024-07-20 16:18:17', '2024-07-28 11:35:44', 0);
INSERT INTO `question` VALUES (1816384721701134338, '[{\"title\":\"下列哪项是逻辑推理的例子？\",\"options\":[{\"score\":0,\"value\":\"如果今天下雨，那么路面湿滑\",\"key\":\"A\"},{\"score\":0,\"value\":\"我喜欢吃苹果，因为它们是红色的\",\"key\":\"B\"}]},{\"title\":\"下列哪个图形是帕斯卡三角形？\",\"options\":[{\"score\":0,\"value\":\"一个等边三角形\",\"key\":\"A\"},{\"score\":0,\"value\":\"一个由数字组成的三角形阵列\",\"key\":\"B\"}]},{\"title\":\"下列哪个概念与相对论有关？\",\"options\":[{\"score\":0,\"value\":\"经典力学\",\"key\":\"A\"},{\"score\":0,\"value\":\"时空弯曲\",\"key\":\"B\"}]},{\"title\":\"下列哪种方法不适用于解决代数问题？\",\"options\":[{\"score\":0,\"value\":\"因式分解\",\"key\":\"A\"},{\"score\":0,\"value\":\"图形法\",\"key\":\"B\"}]},{\"title\":\"下列哪个是化学元素周期表的一部分？\",\"options\":[{\"score\":0,\"value\":\"原子序数\",\"key\":\"A\"},{\"score\":0,\"value\":\"分子结构\",\"key\":\"B\"}]},{\"title\":\"下列哪项不是宏观经济学的概念？\",\"options\":[{\"score\":0,\"value\":\"GDP\",\"key\":\"A\"},{\"score\":0,\"value\":\"相对论\",\"key\":\"B\"}]},{\"title\":\"下列哪种方法可以用来提高记忆能力？\",\"options\":[{\"score\":0,\"value\":\"定期复习\",\"key\":\"A\"},{\"score\":0,\"value\":\"避免所有练习\",\"key\":\"B\"}]},{\"title\":\"下列哪个是计算机编程语言？\",\"options\":[{\"score\":0,\"value\":\"HTML\",\"key\":\"A\"},{\"score\":0,\"value\":\"CSS\",\"key\":\"B\"}]},{\"title\":\"以下哪项活动更能体现大学生的逻辑思维能力？\",\"options\":[{\"score\":0,\"value\":\"解数学题\",\"key\":\"A\"},{\"score\":0,\"value\":\"记忆单词\",\"key\":\"B\"},{\"score\":0,\"value\":\"拼图游戏\",\"key\":\"C\"},{\"score\":0,\"value\":\"短跑测试\",\"key\":\"D\"}]},{\"title\":\"以下哪项活动更能测评大学生的空间想象力？\",\"options\":[{\"score\":0,\"value\":\"图形推理\",\"key\":\"A\"},{\"score\":0,\"value\":\"诗歌创作\",\"key\":\"B\"},{\"score\":0,\"value\":\"化学实验\",\"key\":\"C\"},{\"score\":0,\"value\":\"体育竞赛\",\"key\":\"D\"}]}]', 1816383478601699329, 1, '2024-07-25 16:07:01', '2024-07-28 11:41:47', 0);
INSERT INTO `question` VALUES (1817406201818185729, '[{\"title\":\"CPU的全称是什么？\",\"options\":[{\"score\":0,\"value\":\"Central Processing Unit\",\"key\":\"A\"},{\"score\":0,\"value\":\"Central Power Unit\",\"key\":\"B\"}]},{\"title\":\"以下哪种存储器是易失性的？\",\"options\":[{\"score\":0,\"value\":\"RAM\",\"key\":\"A\"},{\"score\":0,\"value\":\"ROM\",\"key\":\"B\"}]},{\"title\":\"显卡通常连接在主板的哪个接口上？\",\"options\":[{\"score\":0,\"value\":\"PCIe\",\"key\":\"A\"},{\"score\":0,\"value\":\"USB\",\"key\":\"B\"}]},{\"title\":\"硬盘驱动器通常使用的接口类型是什么？\",\"options\":[{\"score\":0,\"value\":\"SATA\",\"key\":\"A\"},{\"score\":0,\"value\":\"IDE\",\"key\":\"B\"}]},{\"title\":\"以下哪种设备属于外设？\",\"options\":[{\"score\":0,\"value\":\"鼠标\",\"key\":\"A\"},{\"score\":0,\"value\":\"CPU\",\"key\":\"B\"}]},{\"title\":\"BIOS的全称是什么？\",\"options\":[{\"score\":0,\"value\":\"Basic Input/Output System\",\"key\":\"A\"},{\"score\":0,\"value\":\"Binary Input/Output System\",\"key\":\"B\"}]},{\"title\":\"哪种类型的内存通常用于缓存？\",\"options\":[{\"score\":0,\"value\":\"SRAM\",\"key\":\"A\"},{\"score\":0,\"value\":\"DRAM\",\"key\":\"B\"}]},{\"title\":\"计算机中哪个部件负责存储操作系统和程序？\",\"options\":[{\"score\":0,\"value\":\"硬盘\",\"key\":\"A\"},{\"score\":0,\"value\":\"RAM\",\"key\":\"B\"}]},{\"title\":\"哪种接口通常用于连接键盘和鼠标？\",\"options\":[{\"score\":0,\"value\":\"PS/2\",\"key\":\"A\"},{\"score\":0,\"value\":\"HDMI\",\"key\":\"B\"}]},{\"title\":\"以下哪个部件是电脑的主要散热设备？\",\"options\":[{\"score\":0,\"value\":\"风扇\",\"key\":\"A\"},{\"score\":0,\"value\":\"电源\",\"key\":\"B\"}]}]', 1817405560798511105, 1, '2024-07-28 11:46:19', '2024-07-28 11:46:19', 0);
INSERT INTO `question` VALUES (1817439662432018434, '[{\"title\":\"下列哪个不是Java中的循环结构？\",\"options\":[{\"score\":0,\"value\":\"for\",\"key\":\"A\"},{\"score\":0,\"value\":\"repeat\",\"key\":\"B\"}]},{\"title\":\"Java中定义方法的修饰符public代表什么？\",\"options\":[{\"score\":0,\"value\":\"该方法可以被任何对象调用\",\"key\":\"A\"},{\"score\":0,\"value\":\"该方法只能被同一包内的类调用\",\"key\":\"B\"}]},{\"title\":\"下列哪个不是Java异常处理的关键字？\",\"options\":[{\"score\":0,\"value\":\"try\",\"key\":\"A\"},{\"score\":0,\"value\":\"finallyif\",\"key\":\"B\"}]},{\"title\":\"Java中哪个关键字用于定义一个常量？\",\"options\":[{\"score\":0,\"value\":\"const\",\"key\":\"A\"},{\"score\":0,\"value\":\"final\",\"key\":\"B\"}]},{\"title\":\"下列哪个方法可以用来从控制台读取用户输入？\",\"options\":[{\"score\":0,\"value\":\"Scanner.nextLine()\",\"key\":\"A\"},{\"score\":0,\"value\":\"System.in.read()\",\"key\":\"B\"}]},{\"title\":\"下列哪项不属于Java面向对象编程的基石？\",\"options\":[{\"score\":0,\"value\":\"类的定义\",\"key\":\"A\"},{\"score\":0,\"value\":\"对象的创建\",\"key\":\"B\"},{\"score\":0,\"value\":\"继承的概念\",\"key\":\"C\"},{\"score\":0,\"value\":\"接口的定义\",\"key\":\"D\"}]},{\"title\":\"以下哪项不是Java程序的主入口点？\",\"options\":[{\"score\":0,\"value\":\"public static void main(String[] args)\",\"key\":\"A\"},{\"score\":0,\"value\":\"System.out.println()\",\"key\":\"B\"},{\"score\":0,\"value\":\"class MyFirstJavaClass\",\"key\":\"C\"},{\"score\":0,\"value\":\"int x = 5;\",\"key\":\"D\"}]},{\"title\":\"以下哪种类型不是Java的基本数据类型？\",\"options\":[{\"score\":0,\"value\":\"String\",\"key\":\"A\"},{\"score\":0,\"value\":\"int\",\"key\":\"B\"},{\"score\":0,\"value\":\"char\",\"key\":\"C\"},{\"score\":0,\"value\":\"void\",\"key\":\"D\"}]},{\"title\":\"下列哪个选项不是Java中的循环结构？\",\"options\":[{\"score\":0,\"value\":\"if-else\",\"key\":\"A\"},{\"score\":0,\"value\":\"for\",\"key\":\"B\"},{\"score\":0,\"value\":\"switch\",\"key\":\"C\"},{\"score\":0,\"value\":\"all of the above\",\"key\":\"D\"}]}]', 1817406994499698690, 1, '2024-07-28 13:59:16', '2024-07-28 14:54:40', 0);
INSERT INTO `question` VALUES (1817529647038357506, '[{\"title\":\"以下哪项是人工智能的主要研究领域？\",\"options\":[{\"score\":0,\"value\":\"机器学习\",\"key\":\"A\"},{\"score\":0,\"value\":\"量子物理\",\"key\":\"B\"}]},{\"title\":\"深度学习是一种怎样的技术？\",\"options\":[{\"score\":0,\"value\":\"一种数据分析方法\",\"key\":\"A\"},{\"score\":0,\"value\":\"一种生物技术\",\"key\":\"B\"}]},{\"title\":\"以下哪个不是人工智能的常见应用？\",\"options\":[{\"score\":0,\"value\":\"自动驾驶汽车\",\"key\":\"A\"},{\"score\":0,\"value\":\"光合作用\",\"key\":\"B\"}]},{\"title\":\"自然语言处理(NLP)主要涉及哪方面的问题？\",\"options\":[{\"score\":0,\"value\":\"计算机与人类语言的交互\",\"key\":\"A\"},{\"score\":0,\"value\":\"动物语言的翻译\",\"key\":\"B\"}]},{\"title\":\"以下哪个算法常用于图像识别？\",\"options\":[{\"score\":0,\"value\":\"卷积神经网络\",\"key\":\"A\"},{\"score\":0,\"value\":\"决策树\",\"key\":\"B\"}]},{\"title\":\"人工智能中的强化学习主要用于什么场景？\",\"options\":[{\"score\":0,\"value\":\"机器人学习行走\",\"key\":\"A\"},{\"score\":0,\"value\":\"天气预报预测\",\"key\":\"B\"}]},{\"title\":\"以下哪个不是机器学习的一种类型？\",\"options\":[{\"score\":0,\"value\":\"监督学习\",\"key\":\"A\"},{\"score\":0,\"value\":\"直觉学习\",\"key\":\"B\"}]},{\"title\":\"AI在医疗领域的主要应用是什么？\",\"options\":[{\"score\":0,\"value\":\"辅助诊断\",\"key\":\"A\"},{\"score\":0,\"value\":\"基因编辑\",\"key\":\"B\"}]},{\"title\":\"以下哪个技术不属于机器视觉范畴？\",\"options\":[{\"score\":0,\"value\":\"面部识别\",\"key\":\"A\"},{\"score\":0,\"value\":\"量子计算\",\"key\":\"B\"}]},{\"title\":\"人工智能的发展主要依赖于哪一项技术？\",\"options\":[{\"score\":0,\"value\":\"大数据\",\"key\":\"A\"},{\"score\":0,\"value\":\"太阳能\",\"key\":\"B\"}]}]', 1817528956957908994, 1, '2024-07-28 19:56:50', '2024-07-28 19:56:50', 0);

-- ----------------------------
-- Table structure for scoring_result
-- ----------------------------
DROP TABLE IF EXISTS `scoring_result`;
CREATE TABLE `scoring_result`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `resultName` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '结果名称，如物流师',
  `resultDesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '结果描述',
  `resultPicture` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '结果图片',
  `resultProp` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '结果属性集合 JSON，如 [I,S,T,J]',
  `resultScoreRange` int NULL DEFAULT NULL COMMENT '结果得分范围，如 80，表示 80及以上的分数命中此结果',
  `appId` bigint NOT NULL COMMENT '应用 id',
  `userId` bigint NOT NULL COMMENT '创建用户 id',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_appId`(`appId` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1817401734246891522 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '评分结果' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scoring_result
-- ----------------------------
INSERT INTO `scoring_result` VALUES (1, 'ISTJ（物流师）', '忠诚可靠，被公认为务实，注重细节。', 'icon_url_istj', '[\"I\",\"S\",\"T\",\"J\"]', NULL, 1, 1, '2024-04-24 16:57:02', '2024-05-09 12:28:21', 0);
INSERT INTO `scoring_result` VALUES (2, 'ISFJ（守护者）', '善良贴心，以同情心和责任为特点。', 'icon_url_isfj', '[\"I\",\"S\",\"F\",\"J\"]', NULL, 1, 1, '2024-04-24 16:57:02', '2024-05-09 12:28:21', 0);
INSERT INTO `scoring_result` VALUES (3, 'INFJ（占有者）', '理想主义者，有着深刻的洞察力，善于理解他人。', 'icon_url_infj', '[\"I\",\"N\",\"F\",\"J\"]', NULL, 1, 1, '2024-04-24 16:57:02', '2024-05-09 12:28:21', 0);
INSERT INTO `scoring_result` VALUES (4, 'INTJ（设计师）', '独立思考者，善于规划和实现目标，理性而果断。', 'icon_url_intj', '[\"I\",\"N\",\"T\",\"J\"]', NULL, 1, 1, '2024-04-24 16:57:02', '2024-05-09 12:28:21', 0);
INSERT INTO `scoring_result` VALUES (5, 'ISTP（运动员）', '冷静自持，善于解决问题，擅长实践技能。', 'icon_url_istp', '[\"I\",\"S\",\"T\",\"P\"]', NULL, 1, 1, '2024-04-24 16:57:02', '2024-05-09 12:28:21', 0);
INSERT INTO `scoring_result` VALUES (6, 'ISFP（艺术家）', '具有艺术感和敏感性，珍视个人空间和自由。', 'icon_url_isfp', '[\"I\",\"S\",\"F\",\"P\"]', NULL, 1, 1, '2024-04-24 16:57:02', '2024-05-09 12:28:21', 0);
INSERT INTO `scoring_result` VALUES (7, 'INFP（治愈者）', '理想主义者，富有创造力，以同情心和理解他人著称。', 'icon_url_infp', '[\"I\",\"N\",\"F\",\"P\"]', NULL, 1, 1, '2024-04-24 16:57:02', '2024-05-09 12:28:21', 0);
INSERT INTO `scoring_result` VALUES (8, 'INTP（学者）', '思维清晰，探索精神，独立思考且理性。', 'icon_url_intp', '[\"I\",\"N\",\"T\",\"P\"]', NULL, 1, 1, '2024-04-24 16:57:02', '2024-05-09 12:28:21', 0);
INSERT INTO `scoring_result` VALUES (9, 'ESTP（拓荒者）', '敢于冒险，乐于冒险，思维敏捷，行动果断。', 'icon_url_estp', '[\"E\",\"S\",\"T\",\"P\"]', NULL, 1, 1, '2024-04-24 16:57:02', '2024-05-09 12:28:21', 0);
INSERT INTO `scoring_result` VALUES (10, 'ESFP（表演者）', '热情开朗，善于社交，热爱生活，乐于助人。', 'icon_url_esfp', '[\"E\",\"S\",\"F\",\"P\"]', NULL, 1, 1, '2024-04-24 16:57:02', '2024-05-09 12:28:21', 0);
INSERT INTO `scoring_result` VALUES (11, 'ENFP（倡导者）', '富有想象力，充满热情，善于激发他人的活力和潜力。', 'icon_url_enfp', '[\"E\",\"N\",\"F\",\"P\"]', NULL, 1, 1, '2024-04-24 16:57:02', '2024-05-09 12:28:21', 0);
INSERT INTO `scoring_result` VALUES (12, 'ENTP（发明家）', '充满创造力，善于辩论，挑战传统，喜欢探索新领域。', 'icon_url_entp', '[\"E\",\"N\",\"T\",\"P\"]', NULL, 1, 1, '2024-04-24 16:57:02', '2024-05-09 12:28:21', 0);
INSERT INTO `scoring_result` VALUES (13, 'ESTJ（主管）', '务实果断，善于组织和管理，重视效率和目标。', 'icon_url_estj', '[\"E\",\"S\",\"T\",\"J\"]', NULL, 1, 1, '2024-04-24 16:57:02', '2024-05-09 12:28:21', 0);
INSERT INTO `scoring_result` VALUES (14, 'ESFJ（尽责者）', '友善热心，以协调、耐心和关怀为特点，善于团队合作。', 'icon_url_esfj', '[\"E\",\"S\",\"F\",\"J\"]', NULL, 1, 1, '2024-04-24 16:57:02', '2024-05-09 12:28:21', 0);
INSERT INTO `scoring_result` VALUES (15, 'ENFJ（教导着）', '热情关爱，善于帮助他人，具有领导力和社交能力。', 'icon_url_enfj', '[\"E\",\"N\",\"F\",\"J\"]', NULL, 1, 1, '2024-04-24 16:57:02', '2024-05-09 12:28:21', 0);
INSERT INTO `scoring_result` VALUES (16, 'ENTJ（统帅）', '果断自信，具有领导才能，善于规划和执行目标。', 'icon_url_entj', '[\"E\",\"N\",\"T\",\"J\"]', NULL, 1, 1, '2024-04-24 16:57:02', '2024-05-09 12:28:21', 0);
INSERT INTO `scoring_result` VALUES (17, '首都知识大师', '你真棒棒哦，首都知识非常出色！', NULL, NULL, 9, 2, 1, '2024-04-25 15:05:44', '2024-05-09 12:28:21', 0);
INSERT INTO `scoring_result` VALUES (18, '地理小能手！', '你对于世界各国的首都了解得相当不错，但还有一些小地方需要加强哦！', NULL, NULL, 7, 2, 1, '2024-04-25 15:05:44', '2024-05-09 12:28:21', 0);
INSERT INTO `scoring_result` VALUES (19, '继续加油！', '还需努力哦', NULL, NULL, 0, 2, 1, '2024-04-25 15:05:44', '2024-05-09 12:28:21', 0);
INSERT INTO `scoring_result` VALUES (1817401281027178497, '看来你并不喜欢上网', '您对该网络热词了解较少。可能您之前没有接触过这个词，或者对其含义和用法不太清楚。建议您可以通过社交媒体、新闻、和网络资源进一步了解这个热词，以便更好地理解和使用它。', '', NULL, 0, 4, 1, '2024-07-28 11:26:45', '2024-07-28 11:26:55', 1);
INSERT INTO `scoring_result` VALUES (1817401366288990209, '不太了解', '您对该网络热词了解较少。可能您之前没有接触过这个词，或者对其含义和用法不太清楚。建议您可以通过社交媒体、新闻、和网络资源进一步了解这个热词，以便更好地理解和使用它。', '', NULL, 0, 4, 1, '2024-07-28 11:27:06', '2024-07-28 11:27:06', 0);
INSERT INTO `scoring_result` VALUES (1817401511348994049, '了解', '您对该网络热词有一定的了解。您可能知道这个词的基本含义和一些常见的用法，但还没有深入掌握。您可以继续关注相关的讨论和文章，以便更加全面地理解这个热词的背景和应用场景。', '', NULL, 60, 4, 1, '2024-07-28 11:27:40', '2024-07-28 11:27:40', 0);
INSERT INTO `scoring_result` VALUES (1817401734246891522, '非常了解', '您对该网络热词非常熟悉。您不仅了解它的基本含义，还知道它的各种使用场景和相关的文化背景。您能够在合适的情境下灵活运用这个热词，并且可以解释给他人听。继续保持对新兴网络词汇的关注，您会在网络交流中更加游刃有余。', '', NULL, 80, 4, 1, '2024-07-28 11:28:33', '2024-07-28 11:28:33', 0);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userAccount` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账号',
  `userPassword` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `unionId` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '微信开放平台id',
  `mpOpenId` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公众号openId',
  `userName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `userAvatar` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户头像',
  `userProfile` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户简介',
  `userRole` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user' COMMENT '用户角色：user/admin/ban',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_unionId`(`unionId` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1817904590183571459 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'b0dd3697a192885d7c055db46155b26a', NULL, NULL, '管理员', 'https://answer-ai.oss-cn-hongkong.aliyuncs.com/2024/07/28/94176df2-9cbe-49f1-9712-2b4c5f700a07-5100fa60edfdd7b0c5ff0ceaf4d2fb9e.jpg', '我是管理员', 'admin', '2024-05-09 11:13:13', '2024-07-30 08:58:24', 0);
INSERT INTO `user` VALUES (1816840361897000962, '18133113528', 'b0dd3697a192885d7c055db46155b26a', NULL, NULL, NULL, NULL, NULL, 'user', '2024-07-26 22:17:52', '2024-07-26 22:17:52', 0);
INSERT INTO `user` VALUES (1817904590183571458, '15856885525', 'b3bb8e5cc358729722fdfd5c7570032e', NULL, NULL, NULL, NULL, NULL, 'user', '2024-07-29 20:46:44', '2024-07-29 20:46:44', 0);

-- ----------------------------
-- Table structure for user_answer
-- ----------------------------
DROP TABLE IF EXISTS `user_answer`;
CREATE TABLE `user_answer`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `appId` bigint NOT NULL COMMENT '应用 id',
  `appType` tinyint NOT NULL DEFAULT 0 COMMENT '应用类型（0-得分类，1-角色测评类）',
  `scoringStrategy` tinyint NOT NULL DEFAULT 0 COMMENT '评分策略（0-自定义，1-AI）',
  `choices` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '用户答案（JSON 数组）',
  `resultId` bigint NULL DEFAULT NULL COMMENT '评分结果 id',
  `resultName` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '结果名称，如物流师',
  `resultDesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '结果描述',
  `resultPicture` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '结果图标',
  `resultScore` int NULL DEFAULT NULL COMMENT '得分',
  `userId` bigint NOT NULL COMMENT '用户 id',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_appId`(`appId` ASC) USING BTREE,
  INDEX `idx_userId`(`userId` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1813898496692015105 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户答题记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_answer
-- ----------------------------
INSERT INTO `user_answer` VALUES (1813537197369880578, 1, 1, 0, '[\"A\",\"A\",\"A\",\"A\",\"A\",\"A\",\"B\",\"A\",\"B\",\"A\"]', 1, 'ISTJ（物流师）', '忠诚可靠，被公认为务实，注重细节。', 'icon_url_istj', NULL, 1, '2024-07-17 19:32:09', '2024-07-17 19:32:09', 0);
INSERT INTO `user_answer` VALUES (1813895821560725505, 1813891409832394754, 0, 0, '[\"A\",\"B\",\"A\",\"B\",\"A\",\"B\",\"A\",\"B\",\"A\",\"B\"]', NULL, NULL, NULL, NULL, NULL, 1, '2024-07-18 19:17:11', '2024-07-18 19:17:11', 0);
INSERT INTO `user_answer` VALUES (1813895915202756610, 1813891409832394754, 0, 0, '[\"A\",\"B\",\"A\",\"B\",\"A\",\"B\",\"A\",\"B\",\"A\",\"A\"]', NULL, NULL, NULL, NULL, NULL, 1, '2024-07-18 19:17:33', '2024-07-18 19:17:33', 0);
INSERT INTO `user_answer` VALUES (1813897782355939330, 1813891409832394754, 1, 1, '[\"A\",\"A\",\"A\",\"A\",\"A\",\"B\",\"A\",\"B\",\"A\",\"B\"]', NULL, 'INTJ - 策划者', '你是一个具有战略思考能力和高度逻辑性的策划者。在工作时，你倾向于独立性和高效性，注重解决问题时的逻辑和客观性。在做决定时，你通常依靠自己的分析和判断，不太受外界因素影响。面对新任务时，你倾向于先制定详尽的计划，然后有条不紊地执行。你的性格更偏向于内向和直觉型，思考问题时总是从宏观的角度出发，寻求长期和深层次的意义。在环境中，你更适应有一定程度的变化和挑战，因为你能够快速适应并找到最佳的应对策略。在做判断时，你依赖于自己的思考和直觉，而不是情感或他人的意见。在团队中，你更重视每个成员的能力和贡献，希望每个人都能发挥最大的潜力。总的来说，作为一个INTJ，你是一个理性、独立、有远见的领导者，总是在寻找最有效的途径来实现目标。', NULL, NULL, 1, '2024-07-18 19:24:58', '2024-07-18 19:26:00', 0);
INSERT INTO `user_answer` VALUES (1813898496692015105, 1813891409832394754, 1, 1, '[\"B\",\"B\",\"B\",\"B\",\"B\",\"B\",\"B\",\"B\",\"B\",\"B\"]', NULL, 'ISFJ - 守卫者', 'ISFJ型的人通常被称为守卫者，他们是忠诚、负责、保守的个体。在工作时，你更倾向于有序和结构化，注重细节，这体现了你的内倾性（I）和感觉（S）特质。在日常生活中，你偏好有计划和组织的生活方式，解决问题时更注重实际和传统的方法，这进一步证实了你的感觉和判断（J）倾向。做决定时，你通常考虑过去的经验和当前的事实，这表明你依赖的是感觉而非直觉（N）。面对新任务时，你倾向于谨慎和有条不紊，显示出你的稳重和可靠。你的性格更偏向于内向、感知、感觉和判断，意味着你重视情感、忠诚和责任。思考问题时，你更倾向于关注现实和具体的信息，而不是抽象的理念。在环境中，你更适应已知和可预测的情况。在做判断时，你依赖于个人价值观和已建立的准则。在团队中，你更重视合作、和谐以及确保每个人的需求得到满足。总的来说，ISFJ型的人是值得信赖的伙伴，他们以自己的方式为世界的秩序和安宁做出贡献。', NULL, NULL, 1, '2024-07-18 19:27:49', '2024-07-18 19:28:03', 0);

-- ----------------------------
-- Table structure for user_answer_0
-- ----------------------------
DROP TABLE IF EXISTS `user_answer_0`;
CREATE TABLE `user_answer_0`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `appId` bigint NOT NULL COMMENT '应用 id',
  `appType` tinyint NOT NULL DEFAULT 0 COMMENT '应用类型（0-得分类，1-角色测评类）',
  `scoringStrategy` tinyint NOT NULL DEFAULT 0 COMMENT '评分策略（0-自定义，1-AI）',
  `choices` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '用户答案（JSON 数组）',
  `resultId` bigint NULL DEFAULT NULL COMMENT '评分结果 id',
  `resultName` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '结果名称，如物流师',
  `resultDesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '结果描述',
  `resultPicture` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '结果图标',
  `resultScore` int NULL DEFAULT NULL COMMENT '得分',
  `userId` bigint NOT NULL COMMENT '用户 id',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_appId`(`appId` ASC) USING BTREE,
  INDEX `idx_userId`(`userId` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1818666392895111168 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户答题记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_answer_0
-- ----------------------------
INSERT INTO `user_answer_0` VALUES (1816740696928837634, 2, 0, 0, '[\"A\",\"A\"]', NULL, NULL, NULL, NULL, NULL, 1, '2024-07-26 15:41:50', '2024-07-28 12:10:46', 1);
INSERT INTO `user_answer_0` VALUES (1817396360255320064, 2, 0, 0, '[\"A\",\"C\",\"C\",\"A\",\"B\",\"D\",\"B\",\"B\",\"B\",\"C\"]', 17, '首都知识大师', '你真棒棒哦，首都知识非常出色！', NULL, 26, 1, '2024-07-28 11:07:23', '2024-07-28 11:07:23', 0);
INSERT INTO `user_answer_0` VALUES (1817401776141971456, 4, 0, 0, '[\"A\",\"A\",\"B\",\"A\",\"B\",\"A\",\"B\",\"A\",\"B\",\"A\"]', 1817401734246891522, '非常了解', '您对该网络热词非常熟悉。您不仅了解它的基本含义，还知道它的各种使用场景和相关的文化背景。您能够在合适的情境下灵活运用这个热词，并且可以解释给他人听。继续保持对新兴网络词汇的关注，您会在网络交流中更加游刃有余。', '', 600, 1, '2024-07-28 11:28:54', '2024-07-28 11:28:54', 0);
INSERT INTO `user_answer_0` VALUES (1817402735169581056, 1813891409832394754, 1, 1, '[\"A\",\"A\",\"B\",\"B\",\"A\",\"B\",\"A\",\"B\",\"A\",\"B\"]', NULL, 'ISTJ', '根据你的选择，你被评估为ISTJ型，即内倾、感觉、思考和判断型。你是一个严肃、实际、务实的人，喜欢有组织、有计划的生活方式。在做决定时，你倾向于依赖逻辑和事实，而不是情感或个人价值观。工作或学习中，你注重效率和细节，总是认真对待你的责任。评估问题时，你更倾向于使用具体的信息和已知的经验，而不是抽象的理念。面对新的活动或挑战时，你可能会谨慎和保守，更喜欢经过验证的方法。在社交场合中，你较为内向，更喜欢小规模或熟悉的人群。计划活动时，你注重结构和时间表，喜欢事先安排好一切。处理任务时，你重视规则和程序，力求完美和精确。面对变化时，你可能会感到不适，更倾向于坚持已知和可预测的事物。在表达自己方面，你比较直接和实际。当他人遇到困难时，你通常会提供实际的帮助，而不是仅仅给予情感支持。总的来说，你是一个值得信赖、负责任、勤奋的个体，是社会和组织的支柱。', NULL, NULL, 1, '2024-07-28 11:32:42', '2024-07-28 11:32:53', 0);
INSERT INTO `user_answer_0` VALUES (1817407589297741824, 1813891409832394754, 1, 1, '[\"A\",\"B\",\"A\",\"B\",\"A\",\"B\",\"A\",\"B\",\"A\",\"B\"]', NULL, 'INTJ（建筑师）', 'INTJ型的人是战略家，他们独立、富有条理、逻辑性强，对自己的决定充满信心。从你的回答来看，你在做决定时倾向于迅速且果断（A选项），这显示了你的决断力。在工作或学习中，你倾向于有组织和计划性（B选项），这表明你善于规划和执行。评估问题时，你更可能从逻辑和客观的角度出发（A选项），而面对新的活动或挑战时，你通常是有准备的，喜欢事先规划（B选项）。在社交场合中，你虽然可能显得有些内向，但仍然倾向于主动沟通自己的想法（A选项）。计划活动时，你偏向于事先安排好每一个细节（B选项）。在处理任务时，你更注重效率和结果（A选项），面对变化时，你虽然有一定的适应性，但更喜欢有计划的变化（B选项）。在表达自己方面，你倾向于直接和坦诚（A选项）。当他人遇到困难时，你通常愿意提供帮助，但更倾向于让他们自己解决问题，相信他们有能力这样做（B选项）。综合以上特点，你的性格类型符合INTJ，即建筑师型，你是一个思考者和策划者，善于分析并创造性地解决问题。', NULL, NULL, 1, '2024-07-28 11:52:00', '2024-07-28 11:52:12', 0);
INSERT INTO `user_answer_0` VALUES (1817440084813385728, 1817406994499698690, 0, 0, '[\"B\",\"B\",\"B\",\"B\",\"B\",\"B\",\"B\",\"B\",\"B\",\"B\"]', NULL, NULL, NULL, NULL, NULL, 1, '2024-07-28 14:01:05', '2024-07-28 14:01:05', 0);
INSERT INTO `user_answer_0` VALUES (1817441004032856064, 1817406994499698690, 0, 0, '[\"A\",\"B\",\"A\",\"B\",\"A\"]', NULL, NULL, NULL, NULL, NULL, 1, '2024-07-28 14:04:48', '2024-07-28 14:04:48', 0);
INSERT INTO `user_answer_0` VALUES (1817443181234507776, 1817406994499698690, 1, 1, '[\"A\",\"B\",\"A\",\"B\",\"A\"]', NULL, 'Java基础知识掌握有待加强', '通过对用户回答的分析，以下是对Java基础知识掌握情况的评价：首先，用户能够识别Java中的循环结构，但对于方法修饰符public的理解不足，它代表该方法可以被任何对象调用。在异常处理方面，用户未能识别关键字，表明对异常处理的概念可能不够清晰。另外，用户正确地指出了定义常量的关键字，但在识别从控制台读取用户输入的方法时出现错误，说明用户在输入输出流方面的知识可能需要加强。综合来看，用户在Java基础知识方面有基本的认识，但某些关键概念和细节上还有待加强，建议进行更深入的学习和实践。', NULL, NULL, 1, '2024-07-28 14:13:20', '2024-07-28 14:13:29', 0);
INSERT INTO `user_answer_0` VALUES (1817450695460159488, 1817406994499698690, 0, 0, '[\"B\",\"A\",\"A\",\"B\",\"A\"]', NULL, NULL, NULL, NULL, NULL, 1, '2024-07-28 14:43:12', '2024-07-28 14:43:12', 0);
INSERT INTO `user_answer_0` VALUES (1817450912834158592, 1817406994499698690, 0, 0, '[\"B\",\"B\",\"B\",\"B\",\"B\"]', NULL, NULL, NULL, NULL, NULL, 1, '2024-07-28 14:44:02', '2024-07-28 14:44:02', 0);
INSERT INTO `user_answer_0` VALUES (1817453045084078080, 1817406994499698690, 0, 0, '[\"B\",\"B\",\"B\",\"B\",\"B\"]', NULL, NULL, NULL, NULL, NULL, 1, '2024-07-28 14:52:30', '2024-07-28 14:52:30', 0);
INSERT INTO `user_answer_0` VALUES (1817453638854918144, 1817406994499698690, 1, 1, '[\"A\",\"B\",\"A\",\"B\",\"A\",\"B\",\"C\",\"C\",\"C\"]', NULL, 'Java基础掌握程度评价', '根据您提供的测试结果，您的Java基础知识掌握情况总体良好，但在一些具体的概念上还有待加强。您正确识别了不是Java循环结构的选项，以及Java异常处理的关键字，这显示了您对这部分知识的理解。然而，对于定义方法的public修饰符、常量的定义关键字、从控制台读取输入的方法，以及Java面向对象编程的基石和程序主入口点等概念，您的回答可能不够准确。这表明您可能需要进一步复习这些方面的知识点。此外，在判断Java基本数据类型时，您未能正确识别出非基本数据类型，这也可能是未来学习的重点。建议您针对这些薄弱环节进行深入学习和实践，以全面提高您的Java编程能力。', NULL, NULL, 1, '2024-07-28 14:54:55', '2024-07-28 14:55:04', 0);
INSERT INTO `user_answer_0` VALUES (1817454105114722304, 1817406994499698690, 1, 1, '[\"A\",\"B\",\"B\",\"B\",\"B\",\"C\",\"C\",\"D\",\"D\"]', NULL, 'Java基础掌握尚可，需加深理解', '通过对用户回答的分析，可以看出用户对Java的基础知识有一定的了解，但某些概念仍需加深理解。例如，用户未能正确识别Java中的循环结构，这说明可能对Java的基础语法掌握不够扎实。在修饰符public的理解上可能也存在误区，它代表该方法可以被任何对象调用，具有最大的访问权限。此外，用户在异常处理关键字、定义常量的关键字以及从控制台读取输入的方法上回答正确，显示了在这些方面的知识比较牢固。然而，对于Java面向对象编程的基石和Java程序的主入口点的理解上，用户的选择暗示可能需要进一步学习。最后，用户能够正确识别Java的基本数据类型，但在循环结构的再次识别上出现了错误，这表明在循环结构的学习上需要重点加强。建议用户回顾Java的基础教程，重点学习循环结构、方法修饰符和面向对象的基础知识。', NULL, NULL, 1, '2024-07-28 14:56:49', '2024-07-28 15:05:28', 0);
INSERT INTO `user_answer_0` VALUES (1817529808810115072, 1817528956957908994, 1, 1, '[\"A\",\"B\",\"A\",\"B\",\"A\",\"B\",\"A\",\"A\",\"A\",\"A\"]', NULL, 'AI知识初识', '根据您提供的测试结果，可以看出您对人工智能领域有基础的了解，但某些核心概念和具体应用的认识仍有提升空间。在主要研究领域的选择上，您能正确指出人工智能的主要研究方向，显示了扎实的理论基础。对于深度学习的理解，您的回答可能揭示了对其技术本质的初步认识。在人工智能的常见应用方面，您未能正确识别出不是人工智能常见应用的选项，这可能意味着您在应用场景的识别上需要进一步学习。自然语言处理的问题上，您的回答显示了对其涉及问题的基本理解。在图像识别算法的选择上，您似乎对常用的算法有所了解。关于强化学习的应用场景，您的回答可能需要更深入的理解。在机器学习的类型识别上，您未能区分出不是机器学习类型的选项，这可能是未来学习的重点。在医疗领域的AI应用上，您的回答正确，表现出对该领域应用的理解。对于机器视觉的技术范畴，您未能正确识别出不属于该范畴的技术，这表明在细化领域知识上还有待加强。总体而言，您对人工智能的发展主要依赖于哪一项技术的认识是正确的，体现了对AI发展驱动的理解。建议您在深入学习各个领域的具体技术细节和应用场景，以便在未来的测试中取得更好的成绩。', NULL, NULL, 1, '2024-07-28 19:57:38', '2024-07-28 19:57:54', 0);
INSERT INTO `user_answer_0` VALUES (1817598852745625600, 1817528956957908994, 1, 1, '[\"A\",\"B\",\"A\",\"A\",\"A\",\"A\",\"A\",\"B\",\"B\",\"A\"]', NULL, 'AI知识初识', '根据您提供的测试情况，您对人工智能领域有基础的了解，但某些核心概念和具体应用的认识还有待加深。在测试中，您对一些主要研究领域和算法的选择显示出对AI基础知识有一定的掌握，如对强化学习的应用场景和图像识别中常用的算法的理解。然而，对于深度学习的具体技术和AI在医疗领域的主要应用，您的回答暗示可能需要进一步的学习和实践。此外，在区分机器学习类型和机器视觉技术方面，您的回答表明对这些领域的边界还不够清晰。建议您在未来的学习中，重点关注这些领域的深入知识和技术细节，以便更全面地理解人工智能的复杂性和多样性。', NULL, NULL, 1, '2024-07-29 00:32:23', '2024-07-29 00:32:31', 0);
INSERT INTO `user_answer_0` VALUES (1817869391032713216, 1817406994499698690, 1, 1, '[\"A\",\"B\",\"A\",\"B\",\"A\",\"B\",\"C\",\"C\",\"C\"]', NULL, 'Java基础掌握程度评价', '根据题目回答情况分析，该用户对Java的基础知识掌握存在一定的不足。在循环结构、方法修饰符、异常处理关键字、定义常量的关键字、控制台输入方法、面向对象编程的基石以及Java程序主入口点等方面，用户未能正确回答所有问题，显示出对某些概念理解不够深入或记忆不够准确。建议用户加强对Java基础概念的学习，特别是循环结构、异常处理、关键字使用以及面向对象编程的核心概念。此外，用户在区分Java基本数据类型方面也需进一步练习。通过系统的复习和练习，相信用户能够提高其Java编程能力。', NULL, NULL, 1, '2024-07-29 18:26:59', '2024-07-29 18:27:07', 0);
INSERT INTO `user_answer_0` VALUES (1818665102077083648, 1817406994499698690, 0, 0, '[\"A\",\"A\",\"B\",\"B\",\"A\",\"D\",\"C\",\"B\",\"C\"]', NULL, NULL, NULL, NULL, NULL, 1, '2024-07-31 23:09:25', '2024-07-31 23:09:25', 0);
INSERT INTO `user_answer_0` VALUES (1818666392895111168, 1817406994499698690, 1, 1, '[\"B\",\"B\",\"B\",\"B\",\"B\",\"B\",\"D\",\"D\",\"C\"]', NULL, 'Java基础掌握尚可，需加深理解', '通过对用户回答的分析，可以看出用户对Java的基础知识有一定的了解，但某些概念仍需加深理解。在循环结构、方法修饰符、异常处理关键字、常量定义、用户输入读取方法、面向对象编程的基石和Java程序主入口点等方面，用户能够正确识别出不是规定选项的答案，但在区分Java基本数据类型和循环结构时出现混淆。建议用户在以下方面进行复习和加强：1. Java中循环结构的种类及其用法；2. 修饰符public在方法定义中的作用；3. 异常处理的关键字及其用法；4. 定义常量的关键字；5. 控制台输入输出流的操作；6. Java面向对象编程的基本原则；7. Java程序入口点main方法的特殊性；8. Java基本数据类型的分类。通过进一步的学习和实践，相信用户能够更加熟练地掌握Java基础知识。', NULL, NULL, 1, '2024-07-31 23:14:02', '2024-07-31 23:14:11', 0);

-- ----------------------------
-- Table structure for user_answer_1
-- ----------------------------
DROP TABLE IF EXISTS `user_answer_1`;
CREATE TABLE `user_answer_1`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `appId` bigint NOT NULL COMMENT '应用 id',
  `appType` tinyint NOT NULL DEFAULT 0 COMMENT '应用类型（0-得分类，1-角色测评类）',
  `scoringStrategy` tinyint NOT NULL DEFAULT 0 COMMENT '评分策略（0-自定义，1-AI）',
  `choices` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '用户答案（JSON 数组）',
  `resultId` bigint NULL DEFAULT NULL COMMENT '评分结果 id',
  `resultName` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '结果名称，如物流师',
  `resultDesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '结果描述',
  `resultPicture` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '结果图标',
  `resultScore` int NULL DEFAULT NULL COMMENT '得分',
  `userId` bigint NOT NULL COMMENT '用户 id',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_appId`(`appId` ASC) USING BTREE,
  INDEX `idx_userId`(`userId` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1818666074161561600 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户答题记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_answer_1
-- ----------------------------
INSERT INTO `user_answer_1` VALUES (1814576686636814338, 1814226908396687361, 1, 1, '[\"A\",\"A\",\"A\",\"A\"]', NULL, '心理健康状况良好', '根据所提供的心理测评结果，员工在自我评价和心理状态方面均给出了积极的反馈。两次提问中，员工都选择了积极的选项（A），表明他们目前的心理状态较为健康，没有明显的焦虑或心理压力。然而，需要注意的是，这样的测评可能只能提供一个大致的心理健康轮廓，它不能全面代表员工的心理状态。为了更准确地了解员工的心理健康状况，建议进行更深入的一对一沟通或专业的心理评估。在此基础上，可以认为该员工目前的心理健康状况是良好的，建议继续保持积极的心态，并关注日常工作和生活中的压力管理，以维护和促进心理健康。', NULL, NULL, 1, '2024-07-20 16:22:41', '2024-07-20 16:22:49', 0);
INSERT INTO `user_answer_1` VALUES (1814576820246368258, 1814226908396687361, 1, 1, '[\"A\",\"A\",\"A\",\"A\"]', NULL, '心理健康状况良好', '根据所提供的心理测评结果，员工在自我评价和心理状态方面均给出了积极的反馈。两次提问中，员工都选择了积极的选项（A），表明他们目前的心理状态较为健康，没有明显的焦虑或心理压力。然而，需要注意的是，这样的测评可能只能提供一个大致的心理健康轮廓，它不能全面代表员工的心理状态。为了更准确地了解员工的心理健康状况，建议进行更深入的一对一沟通或专业的心理评估。在此基础上，可以认为该员工目前的心理健康状况是良好的，建议继续保持积极的心态，并关注日常工作和生活中的压力管理，以维护和促进心理健康。', NULL, NULL, 1, '2024-07-20 16:23:12', '2024-07-20 16:23:13', 0);
INSERT INTO `user_answer_1` VALUES (1816303619494137856, 1814226908396687361, 1, 1, '[\"C\",\"C\",\"C\",\"C\"]', NULL, '心理健康状态尚可', '根据您提供的心理测评结果，您在自我评价心理状态以及工作中感到的焦虑程度方面都选择了中间选项。这可能表明您目前的心理健康状态处于一般水平，既没有明显的心理压力也没有特别积极的心理状态。建议您在工作之余，关注自我情绪调节，适当参与放松身心的活动，以提高心理健康水平。同时，如果感到有任何压力或情绪困扰，及时寻求专业的心理支持或与信任的人分享，将对维护您的心理健康大有裨益。', NULL, NULL, 1, '2024-07-25 10:44:54', '2024-07-25 10:45:02', 0);
INSERT INTO `user_answer_1` VALUES (1816305069708300288, 1814226908396687361, 1, 1, '[\"D\",\"D\",\"D\",\"D\"]', NULL, '潜在心理压力', '根据所提供的心理测评结果，员工在自我评价心理状态和工作中感到的焦虑程度方面，均显示出可能的负面情绪。虽然测评题目重复且信息量有限，但两次回答都指向了相似的心理状态，这可能表明员工目前正经历一定的心理压力。建议进行更深入的心理健康评估，并提供必要的支持和资源，以帮助员工改善心理状态，提高工作满意度和效率。同时，建议关注员工的工作环境和个人生活压力，探索可能存在的压力源，并采取适当的干预措施。', NULL, NULL, 1, '2024-07-25 10:51:05', '2024-07-25 10:51:13', 0);
INSERT INTO `user_answer_1` VALUES (1816382947850530816, 1, 1, 0, '[\"A\",\"A\",\"A\",\"A\",\"A\",\"A\",\"A\",\"A\",\"A\",\"A\"]', 1, 'ISTJ（物流师）', '忠诚可靠，被公认为务实，注重细节。', 'icon_url_istj', NULL, 1, '2024-07-25 16:00:08', '2024-07-25 16:00:09', 0);
INSERT INTO `user_answer_1` VALUES (1816384759437557760, 1816383478601699329, 1, 1, '[\"A\",\"A\"]', NULL, '有待提升', '学生在本次智力测试中展示了一定的逻辑思维能力，但答案可能存在误解。第一题是关于猫的喵喵叫的泛化问题，正确答案应该是指出所有猫都会喵喵叫这一事实，学生的答案需要进一步明确是否理解了题目的含义。第二题是数学运算题，用两个数字2通过加法得到4是正确的，但用减法通常不会得到一个确切的数字结果，除非考虑到特殊的数学解释，例如2减去2的倒数（1/2）等于4，但这超出了常规的数学运算范围。因此，学生的回答可能表明他们在逻辑推理和数学理解方面还有待加强。建议在未来的学习中，学生能够更加深入地理解问题的本质，并在数学运算上加强练习，以提高解决问题的能力。', NULL, NULL, 1, '2024-07-25 16:07:19', '2024-07-25 16:07:27', 0);
INSERT INTO `user_answer_1` VALUES (1816740695796375554, 1, 0, 0, '[\"A\",\"A\"]', NULL, NULL, NULL, NULL, NULL, 1, '2024-07-26 15:41:50', '2024-07-27 08:41:27', 0);
INSERT INTO `user_answer_1` VALUES (1816840426856558592, 1, 1, 0, '[\"A\",\"A\",\"A\",\"A\",\"A\",\"A\",\"A\",\"A\",\"B\",\"A\"]', 1, 'ISTJ（物流师）', '忠诚可靠，被公认为务实，注重细节。', 'icon_url_istj', NULL, 1816840361897000962, '2024-07-26 22:18:21', '2024-07-26 22:18:22', 0);
INSERT INTO `user_answer_1` VALUES (1816996243656323072, 1, 1, 0, '[\"A\",\"A\",\"A\",\"A\",\"B\",\"B\",\"B\",\"B\",\"B\",\"B\"]', 1, 'ISTJ（物流师）', '忠诚可靠，被公认为务实，注重细节。', 'icon_url_istj', NULL, 1, '2024-07-27 08:37:28', '2024-07-27 08:37:28', 0);
INSERT INTO `user_answer_1` VALUES (1817397231328374784, 3, 1, 1, '[\"A\",\"B\",\"B\",\"A\",\"B\",\"A\",\"B\",\"A\",\"A\",\"B\"]', NULL, 'ESFJ - 管理者', '根据你的选择，你似乎是一个外向、感觉型、情感型和判断型的人，这在MBTI性格理论中对应于ESFJ类型，被称为\'管理者\'。ESFJ类型的人通常是热情、有组织、有责任心的，他们珍视和谐，喜欢帮助他人。你可能在社交场合中感到自如，喜欢与人互动，同时重视规则和结构，使你能够有效地管理日常安排。面对问题时，你倾向于寻求他人的意见，并且你很可能会考虑他人的感受。时间对你来说是非常宝贵的，你通常会提前计划并遵循既定的安排。', NULL, NULL, 1, '2024-07-28 11:10:51', '2024-07-28 11:11:07', 0);
INSERT INTO `user_answer_1` VALUES (1817398222719234048, 3, 1, 1, '[\"A\",\"A\",\"A\",\"A\",\"A\",\"B\",\"B\",\"B\",\"B\",\"B\"]', NULL, 'ISTJ', '根据你提供的答案，你似乎倾向于表现出ISTJ的性格特征。ISTJ代表内倾、感觉、思考和判断。你通常更喜欢有序和结构化的环境，在安排活动时注重计划和细节。你对规则持有尊重的态度，认为它们是社会运作的基础。在社交场合中，你可能比较保守和安静，更喜欢有深度的对话而不是表面的闲聊。面对新的挑战时，你倾向于谨慎和准备充分。在日常生活中，你实际和务实，做决定时依靠逻辑和事实而非情感。对于日常安排，你注重效率和条理，遇到问题时倾向于独立解决。你对时间的看法是宝贵的，不喜欢浪费在不必要的事情上。总的来说，你是一个认真、负责、有组织性的人，适合从事需要细致分析和高度组织能力的工作。', NULL, NULL, 1, '2024-07-28 11:15:01', '2024-07-28 11:15:12', 0);
INSERT INTO `user_answer_1` VALUES (1817403890549338112, 1814226908396687361, 1, 1, '[\"B\",\"B\",\"A\",\"B\",\"A\",\"A\",\"B\",\"A\",\"A\",\"B\"]', NULL, '心理状态尚可，需注意压力管理', '根据测评结果，员工整体心理状态较为健康，能够保持积极乐观的态度，对工作成果感到满意，且能够适应工作中的变化。在与同事的交流中感到轻松自在，较少发生冲突，这表明员工的人际关系处理得相对较好。然而，员工在工作中仍感到一定的压力，有时会感到疲惫，缺乏活力，集中注意力方面也存在一定的挑战。建议员工注意工作与生活的平衡，适当进行压力管理和放松训练，以提高工作效率和生活质量。此外，员工应继续保持积极的心态和良好的人际交往能力，以促进心理健康和工作表现的进一步提升。', NULL, NULL, 1, '2024-07-28 11:37:21', '2024-07-28 11:37:28', 0);
INSERT INTO `user_answer_1` VALUES (1817404688561811456, 1816383478601699329, 1, 1, '[\"A\",\"B\"]', NULL, '基础逻辑智力测评', '测评结果显示，参与测评的学生在基础逻辑推理能力上表现良好。在第一题中，学生选择了正确答案，表明能够理解并应用条件逻辑推理，这是一个积极的信号，显示出学生的逻辑思维能力和理解一般规律的能力。然而，在第二题中，学生未能给出正确答案。这表明在涉及逆向思维的减法运算上，学生可能需要进一步的锻炼和提升。整体来看，学生在直观逻辑推理上表现较好，但在需要更深层次思考的问题上还有待加强。建议学生在日常学习中多进行逻辑思维训练，尤其是在解决一些非直观问题时，要学会从不同角度进行思考和分析。', NULL, NULL, 1, '2024-07-28 11:40:25', '2024-07-28 11:40:32', 0);
INSERT INTO `user_answer_1` VALUES (1817405081106722816, 1816383478601699329, 1, 1, '[\"A\",\"B\",\"B\",\"A\",\"B\",\"B\",\"A\",\"A\",\"B\",\"C\"]', NULL, '逻辑与专业知识初评', '根据提供的大学生智力测评题目和用户回答，初步评价如下：该大学生在逻辑推理、专业知识掌握方面表现良好。能够正确识别逻辑推理的例子，对化学元素周期表和计算机编程语言有一定的了解，显示出较好的学术基础。同时，在相对论和宏观经济学的认知上，也能够做出正确的判断。然而，对于图形识别和空间想象力方面，可能需要进一步的锻炼和提高。特别是在识别帕斯卡三角形和测评空间想象力的活动中，未能选择正确答案。建议该大学生在保持逻辑思维和专业知识学习的同时，加强空间想象力相关的训练，以促进综合智力的发展。', NULL, NULL, 1, '2024-07-28 11:42:00', '2024-07-28 11:42:06', 0);
INSERT INTO `user_answer_1` VALUES (1817441586617487360, 3, 1, 1, '[\"B\",\"B\",\"B\",\"B\",\"B\",\"B\",\"B\",\"B\",\"B\",\"B\"]', NULL, 'ISTJ（检查员）', 'ISTJ型的人通常被认为是严肃的、实际的、和组织性强的。他们重视传统和秩序，对于规则和结构有很高的尊重。你似乎倾向于在社交场合中保持有序和结构化，更喜欢计划和组织活动，以确保一切顺利进行。在面对新的挑战时，你可能会采取谨慎和务实的方法，依赖过去的经验和逻辑来做出决策。你很可能是非常守时的，对时间的利用有明确的要求。在日常生活中，你注重细节，有很强的责任感，当遇到问题时，你倾向于独立解决，依靠自己的判断和能力。ISTJ型的人是值得信赖的，他们忠诚、勤奋，是团队中不可或缺的稳定力量。', NULL, NULL, 1, '2024-07-28 14:07:11', '2024-07-28 14:07:33', 0);
INSERT INTO `user_answer_1` VALUES (1818666074161561600, 1, 1, 0, '[\"A\",\"B\",\"A\",\"B\",\"A\",\"B\",\"A\",\"B\",\"A\",\"A\"]', 1, 'ISTJ（物流师）', '忠诚可靠，被公认为务实，注重细节。', 'icon_url_istj', NULL, 1, '2024-07-31 23:12:45', '2024-07-31 23:12:46', 0);

SET FOREIGN_KEY_CHECKS = 1;
