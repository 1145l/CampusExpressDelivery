SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `student_id` int NOT NULL COMMENT '所属学生id',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地址',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '手机号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `as_default` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '是否为默认地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '地址薄' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, 2, '男生宿舍11栋1101室', '13988997788', '王大锤', '是');
INSERT INTO `address` VALUES (2, 2, '繁华大道1101号', '13899887766', '王先生', '否');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin', '管理员', 'http://localhost:9090/files/download/1721114905635-柴犬.jpeg', 'ADMIN', '18899990011', 'admin2@xm.com');

-- ----------------------------
-- Table structure for cash_record
-- ----------------------------
DROP TABLE IF EXISTS `cash_record`;
CREATE TABLE `cash_record`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `courier_id` int NULL DEFAULT NULL COMMENT '代取员id',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收款码照片',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '申请状态',
  `money` double(10, 2) NULL DEFAULT NULL COMMENT '提现金额',
  `apply_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '申请时间',
  `feedback` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审批反馈',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '提现申请' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cash_record
-- ----------------------------
INSERT INTO `cash_record` VALUES (4, 8, 'http://localhost:9090/files/download/1731576835163-zfb.png', '通过', 5.40, '2024-11-14 17:33:56', '已发放');

-- ----------------------------
-- Table structure for courier_commission
-- ----------------------------
DROP TABLE IF EXISTS `courier_commission`;
CREATE TABLE `courier_commission`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '等级名称',
  `commission` double(10, 2) NULL DEFAULT NULL COMMENT '提成比例',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '代取员等级信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of courier_commission
-- ----------------------------
INSERT INTO `courier_commission` VALUES (7, '普通代取员', 0.45, '代取员申请成功后就是普通代取员了');
INSERT INTO `courier_commission` VALUES (8, '优秀代取员', 0.55, '获得奖项或者代取件超过100件就可以申请');
INSERT INTO `courier_commission` VALUES (9, '高级代取员', 0.65, '获得奖项或者代取件超过500件就可以申请');
INSERT INTO `courier_commission` VALUES (10, '特级代取员', 0.75, '获得奖项或者代取件超过1000件就可以申请');

-- ----------------------------
-- Table structure for express_type
-- ----------------------------
DROP TABLE IF EXISTS `express_type`;
CREATE TABLE `express_type`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类名称',
  `price` int NULL DEFAULT NULL COMMENT '价格',
  `attribute` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '属性',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '代取快递分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of express_type
-- ----------------------------
INSERT INTO `express_type` VALUES (1, '校内-快递-小件', 5, '快递');
INSERT INTO `express_type` VALUES (2, '校内-快递-大件', 6, '快递');
INSERT INTO `express_type` VALUES (3, '校内-外卖', 5, '外卖');
INSERT INTO `express_type` VALUES (4, '校外-外卖', 6, '外卖');
INSERT INTO `express_type` VALUES (5, '普通-医药代取', 8, '医药');
INSERT INTO `express_type` VALUES (6, '特快-医药代取', 10, '医药');
INSERT INTO `express_type` VALUES (9, '校外-快递-小件', 8, '快递');
INSERT INTO `express_type` VALUES (10, '校外-快递-大件', 10, '快递');

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `student_id` int NULL DEFAULT NULL COMMENT '反馈人ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '反馈问题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '反馈内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '反馈时间',
  `reply_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '回复内容',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '回复状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '反馈信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES (1, 2, '我的快递丢了，联系电话 13988997788', '我的快递丢了，联系电话 13988997788', '2024-11-18 14:33:00', '好的，我来核实一下，结果会电话联系你', '已回复');
INSERT INTO `feedback` VALUES (3, 2, '111', '111', '2024-11-18 14:46:38', '你在说什么玩意儿？？', '已回复');
INSERT INTO `feedback` VALUES (4, 2, '快递没收到', '对不起，我是说我的快递没收到，请帮我核实，我的qq：1113233314', '2024-11-18 14:47:45', '好的，我来帮你看看', '已回复');
INSERT INTO `feedback` VALUES (5, 5, '我没拿到快递', '我没拿到快递，单号：12123213123131', '2024-11-18 14:48:29', '这个订单不存在', '已回复');

-- ----------------------------
-- Table structure for identification
-- ----------------------------
DROP TABLE IF EXISTS `identification`;
CREATE TABLE `identification`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `student_id` int NULL DEFAULT NULL COMMENT '学生id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '真实名称',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '当前住址',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `card_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '身份证号',
  `card_front` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '身份证正面照片',
  `card_back` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '身份证背面照片',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '认证状态',
  `commission_id` int NULL DEFAULT NULL COMMENT '代取员初始等级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '代取员认证' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of identification
-- ----------------------------
INSERT INTO `identification` VALUES (4, 5, '王二锤', '北京市前门大街', '13900998899', '110011199909089878', 'http://localhost:9090/files/download/1731400247479-身份证正.png', 'http://localhost:9090/files/download/1731400251159-身份证背.png', '通过', 7);
INSERT INTO `identification` VALUES (5, 6, '李晓菲', '合肥市繁华大道110号', '13877667788', '342000199908091090', 'http://localhost:9090/files/download/1731551404137-身份证正.png', 'http://localhost:9090/files/download/1731551406472-身份证背.png', '通过', 7);
INSERT INTO `identification` VALUES (7, 8, '青哥哥', '合肥市政务区环形大道101号', '13977888866', '342300199909078978', 'http://localhost:9090/files/download/1731575047799-身份证正.png', 'http://localhost:9090/files/download/1731575050112-身份证背.png', '通过', 7);
INSERT INTO `identification` VALUES (8, 9, '张三丰', '合肥市政务区环形大道101号', '13977888866', '342300199909078978', 'http://localhost:9090/files/download/1731575047799-身份证正.png', 'http://localhost:9090/files/download/1731575050112-身份证背.png', '通过', 7);
INSERT INTO `identification` VALUES (9, 10, '苏大叔', '合肥市政务区环形大道101号', '13977888866', '342300199909078978', 'http://localhost:9090/files/download/1731575047799-身份证正.png', 'http://localhost:9090/files/download/1731575050112-身份证背.png', '通过', 7);
INSERT INTO `identification` VALUES (10, 11, '李二哥', '合肥市政务区环形大道101号', '13977888866', '342300199909078978', 'http://localhost:9090/files/download/1731575047799-身份证正.png', 'http://localhost:9090/files/download/1731575050112-身份证背.png', '通过', 7);
INSERT INTO `identification` VALUES (11, 12, '张菲菲', '合肥市政务区环形大道101号', '13977888866', '342300199909078978', 'http://localhost:9090/files/download/1731575047799-身份证正.png', 'http://localhost:9090/files/download/1731575050112-身份证背.png', '通过', 7);
INSERT INTO `identification` VALUES (12, 13, '赵琴', '合肥市政务区环形大道101号', '13977888866', '342300199909078978', 'http://localhost:9090/files/download/1731575047799-身份证正.png', 'http://localhost:9090/files/download/1731575050112-身份证背.png', '通过', 7);
INSERT INTO `identification` VALUES (13, 14, '王锤锤', '合肥市政务区环形大道101号', '13977888866', '342300199909078978', 'http://localhost:9090/files/download/1731575047799-身份证正.png', 'http://localhost:9090/files/download/1731575050112-身份证背.png', '通过', 7);
INSERT INTO `identification` VALUES (14, 15, '李三妹', '合肥市政务区环形大道101号', '13977888866', '342300199909078978', 'http://localhost:9090/files/download/1731575047799-身份证正.png', 'http://localhost:9090/files/download/1731575050112-身份证背.png', '通过', 7);
INSERT INTO `identification` VALUES (15, 16, '周萌萌', '合肥市政务区环形大道101号', '13977888866', '342300199909078978', 'http://localhost:9090/files/download/1731575047799-身份证正.png', 'http://localhost:9090/files/download/1731575050112-身份证背.png', '通过', 7);
INSERT INTO `identification` VALUES (16, 17, '午哥哥', '合肥市政务区环形大道101号', '13977888866', '342300199909078978', 'http://localhost:9090/files/download/1731575047799-身份证正.png', 'http://localhost:9090/files/download/1731575050112-身份证背.png', '通过', 7);

-- ----------------------------
-- Table structure for information
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '资讯标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '资讯内容',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '资讯封面',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布时间',
  `view_count` int NULL DEFAULT NULL COMMENT '浏览量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '校园资讯' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of information
-- ----------------------------
INSERT INTO `information` VALUES (1, '提高服务质量通知', '<p style=\"text-align: start;\"><span style=\"font-size: 16px;\">在当今竞争激烈的市场环境中，服务质量已成为衡量企业竞争力的核心指标之一。无论是在餐饮、零售、教育，还是医疗、物流等行业，提供卓越的服务不仅能够吸引并留住顾客，更能为企业树立良好的品牌形象，推动可持续发展。本文旨在探讨如何从多个维度出发，全面提升服务质量，让每一次服务都成为品牌与顾客间信任的桥梁。</span></p><h2 style=\"text-align: start;\">一、深入了解客户需求</h2><p style=\"text-align: start;\"><span style=\"font-size: 16px;\">一切服务的起点在于理解客户。企业应通过问卷调查、社交媒体监听、客户访谈等方式，主动收集并分析客户反馈，深入挖掘其隐性需求与期望。了解不同客户群体的特性，为个性化服务打下坚实基础。例如，餐厅可根据顾客的饮食偏好推荐菜品，医疗机构则需关注患者的情感需求，提供温馨舒适的就医环境。</span></p><h2 style=\"text-align: start;\">二、强化员工培训与激励</h2><p style=\"text-align: start;\"><span style=\"font-size: 16px;\">员工是服务质量的直接执行者。定期开展服务技能培训，不仅包括专业技能的提升，更要强调服务态度、沟通技巧的培养。同时，建立健全的员工激励机制，表彰优秀服务案例，让员工感受到自身价值被认可，从而激发内在动力，主动提升服务质量。企业文化的塑造同样重要，营造一个以客户为中心的工作氛围，让优质服务成为企业文化的一部分。</span></p><h2 style=\"text-align: start;\">三、优化服务流程与技术创新</h2><p style=\"text-align: start;\"><span style=\"font-size: 16px;\">简化服务流程，减少客户等待时间，是提升客户满意度的关键。运用数字化工具，如自助服务终端、在线预约系统、AI客服等，不仅可以提升服务效率，还能提供24小时不间断的服务体验。此外，利用大数据分析客户行为，预测需求趋势，提前做出服务调整，使服务更加精准、高效。</span></p><h2 style=\"text-align: start;\">四、建立快速响应机制</h2><p style=\"text-align: start;\"><span style=\"font-size: 16px;\">面对客户投诉或建议，快速响应并有效解决是维护客户关系的黄金法则。设立专门的客户服务热线、在线反馈渠道，确保问题能够被及时记录并传达至相关部门。实施首问负责制，确保每一位客户的问题都有人跟进到底，直至满意解决。同时，将客户的反馈视为改进服务的契机，不断优化服务流程与策略。</span></p><h2 style=\"text-align: start;\">五、持续跟踪与评估</h2><p style=\"text-align: start;\"><span style=\"font-size: 16px;\">服务质量的提升是一个持续的过程，需要建立一套科学的评估体系。通过客户满意度调查、净推荐值(NPS)等量化指标，定期评估服务质量，并与竞争对手进行对比分析，找出差距所在。同时，鼓励内部自检，通过神秘顾客、服务暗访等方式，发现服务盲点，及时纠偏。</span></p>', 'http://localhost:9090/files/download/1731569372729-11.png', '2024-11-14 15:29:34', 3);
INSERT INTO `information` VALUES (2, '代取外卖业务开通啦', '<p>在当今快节奏的大学生活中，外卖成为了学子们不可或缺的饮食选择，不仅因其便捷性，更在于其丰富多样的餐饮种类满足了年轻群体对美食的无限向往。然而，面对紧张的学习安排与偶尔的生活不便，错过外卖配送时间、无法亲自下楼取餐的情况时有发生。鉴于此，我们学校与时俱进，正式宣布开通代取外卖业务，旨在进一步提升校园生活品质，让每一位同学都能在忙碌中享受片刻轻松与美味。</p><h3>创新服务，应需而生</h3><p>代取外卖服务的推出，是基于对学生需求的深入调研与理解。我们深知，在紧张的学业与丰富的课外活动之间，一顿及时、热腾腾的饭菜不仅是身体的能量补给，更是心灵的小憩。通过与多家知名外卖平台深度合作，我们建立了专属的代取外卖系统，旨在打通"最后一公里"，确保每位同学的外卖都能准时、安全地送达宿舍门口。</p><h3>智能便捷，一键操作</h3><p>该服务通过一款简洁易用的校园APP实现，同学们只需几步简单操作即可完成代取申请：选择外卖平台、输入订单号、预约送达时间，系统将自动匹配校园内的代取团队。我们采用了先进的订单追踪技术，确保每位同学可以实时查看外卖取送状态，做到心中有数，安心等待美食上门。</p><h3>安全保障，健康第一</h3><p>食品安全与个人隐私是代取外卖业务的两大核心要素。我们对所有参与代取服务的工作人员进行了严格的健康检查与培训，确保全程佩戴口罩、手套，遵循无接触配送原则。同时，平台采用加密技术保护每位用户的个人信息，让安全与美味同行。</p><h3>绿色环保，责任同行</h3><p>在享受便利的同时，我们也倡导环保理念。鼓励使用可降解餐具，减少塑料垃圾产生，并设置外卖包装回收点，共同维护校园环境的清洁与美丽。我们相信，每一份小小的环保行动，都是对未来负责的体现。</p><h3>社区共建，共享成果</h3><p>代取外卖业务的启动，不仅是校园服务的一次重要升级，更是我们共同参与校园文化建设的机会。我们诚邀每一位同学提出宝贵意见，共同完善服务流程，让这项服务更加贴近大家的需求。未来，我们还将探索更多校园生活服务的可能性，努力营造一个更加温馨、便捷、绿色的学习生活环境。</p><h3>结语</h3><p>开通代取外卖业务，是我们校园迈向智能化、人性化管理的重要一步。它不仅解决了学生们生活中的实际问题，更是对校园社区服务模式的一种创新探索。我们期待这一服务能够成为连接学生与美好生活的一座桥梁，让学习与生活的每一刻都充满便利与温暖。让我们携手前行，在追求知识的同时，享受更加丰富多彩的校园生活。<span style=\"color: inherit;\"><br></span></p>', 'http://localhost:9090/files/download/1731569632594-22.png', '2024-11-14 15:33:55', 5);
INSERT INTO `information` VALUES (3, '绿色环保，助力可持续发展', '<p style=\"text-align: start;\"><span style=\"font-size: 16px;\">在这个快节奏的时代，电子商务的蓬勃发展让快递服务成为了日常生活中不可或缺的一部分，尤其对于在校师生而言，频繁的网购活动使得快递收发成了校园生活的重要组成部分。为了进一步提升校园服务品质，方便广大师生的学习与生活，我校积极响应师生需求，正式宣布开通快递代取业务，标志着校园智能化、便捷化服务迈出了新的一步。</span></p><h2 style=\"text-align: start;\">引领智能校园新风尚</h2><p style=\"text-align: start;\"><span style=\"font-size: 16px;\">随着快递量的日益增长，传统的快递领取方式已难以满足师生们的实际需求，常常面临取件高峰期排长队、错过快递点营业时间等困扰。为此，我校联合知名快递企业及专业科技团队，经过数月的筹备与测试，成功搭建了校园快递代取服务平台。这一创新举措不仅有效解决了师生的快递难题，更是校园服务智能化、人性化的一大进步，引领了智能校园的新风尚。</span></p><h2 style=\"text-align: start;\">一站式服务，便捷高效</h2><p style=\"text-align: start;\"><span style=\"font-size: 16px;\">全新的快递代取业务，依托于先进的信息化平台，为全校师生提供了一站式服务体验。用户只需通过手机应用或校园网站，简单几步即可完成快递代取的预约操作。平台支持自动识别快递单号，实时追踪快递状态，确保每一份快递都能准确无误地送达师生手中。无论是上课时间紧张的教师，还是宿舍不便外出的学生，都可以享受到"随时随地，随心所欲"的快递领取服务。</span></p><h2 style=\"text-align: start;\">安全保障，放心托付</h2><p style=\"text-align: start;\"><span style=\"font-size: 16px;\">安全与隐私始终是我们最重视的问题。在快递代取业务的设计之初，便充分考虑到了信息安全与物品安全。平台采用多重加密技术保护用户个人信息，确保交易过程的安全无忧。同时，所有参与快递代取的工作人员均经过严格筛选与培训，佩戴统一标识，全程记录取送过程，让师生们能够放心托付，安心收件。</span></p><h2 style=\"text-align: start;\">绿色环保，助力可持续发展</h2><p style=\"text-align: start;\"><span style=\"font-size: 16px;\">在提供便利的同时，我校快递代取业务亦不忘绿色环保理念。鼓励使用电子面单减少纸张消耗，提倡集中时间段取件以减少碳排放，同时在校园内增设快递回收站点，促进快递包装材料的循环利用。通过这些措施，我们不仅提升了校园快递服务的效率，也为推动绿色校园、可持续发展贡献了一份力量。</span></p><h2 style=\"text-align: start;\">社区共建，共享成果</h2><p style=\"text-align: start;\"><span style=\"font-size: 16px;\">快递代取业务的开通，不仅是校园服务的一次重大升级，更是校企合作、师生共创的典范。未来，我们将继续倾听师生意见，不断优化服务流程，探索更多增值服务，如快递暂存、个性化配送时间选择等，力求打造更加贴合师生需求的快递服务体系。同时，我们也鼓励师生参与到这项服务的监督与反馈中来，共同建设更加和谐、便捷、智能的校园生活环境。</span></p><p style=\"text-align: start;\"><span style=\"font-size: 16px;\">总之，我校快递代取业务的启动，标志着校园服务进入了新的发展阶段。我们相信，通过持续的努力与创新，这一服务将成为连接师生与外界的重要桥梁，让校园生活更加美好，学习工作更加高效，共同见证并参与智能校园的繁荣发展。</span></p>', 'http://localhost:9090/files/download/1731569668258-44.png', '2024-11-14 15:34:29', 17);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公告标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '公告内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '系统公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '今天天气真的不错', '今天好开心呀！因为天气很好，我又可以肆无忌惮的跟着武哥和青哥学习了！！真的好开心！', '2024-07-16 15:51:17');
INSERT INTO `notice` VALUES (2, '项目所有功能开发完毕！', '我的项目所有的功能都开发完啦！真的很有成就感！', '2024-07-16 15:52:22');
INSERT INTO `notice` VALUES (3, '项目功能都测试完成，准备上线！', '经过半个月的学习和练习，终于把这个项目完成了，可以打包上线了！', '2024-07-16 15:52:56');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单号',
  `courier_id` int NULL DEFAULT NULL COMMENT '代取员id',
  `student_id` int NULL DEFAULT NULL COMMENT '发布学生id',
  `express_type` int NULL DEFAULT NULL COMMENT '代取物品类型id',
  `price` int NULL DEFAULT NULL COMMENT '订单价格',
  `tip` int NULL DEFAULT NULL COMMENT '小费',
  `descr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '代取订单简介',
  `pickup_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '取件地址',
  `shipping_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收件地址',
  `customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收件人名称',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收件人手机号',
  `pickup_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '取件码截图',
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单创建时间',
  `access_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单接取时间',
  `deliver_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单送达时间',
  `sign_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单签收时间',
  `rate` double(10, 2) NULL DEFAULT NULL COMMENT '评分',
  `feedback` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '反馈信息',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '代取状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '代取订单信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (3, '1731486607902', NULL, 2, 3, 7, 2, '一份米线', '校食堂1楼良缘米线', '男生宿舍11栋1101宿舍', '王大锤', '13988997788', 'http://localhost:9090/files/download/1731486437349-快递取件码.png', '2024-11-13 16:30:07', NULL, NULL, NULL, 0.00, NULL, '已取消');
INSERT INTO `orders` VALUES (4, '1731487583374', NULL, 7, 10, 15, 5, '一个大箱子', '校北门的菜鸟驿站', '男生宿舍11栋1102室', '王帅帅', '13877886677', 'http://localhost:9090/files/download/1731487575341-快递取件码.png', '2024-11-13 16:46:23', NULL, NULL, NULL, 0.00, NULL, '待支付');
INSERT INTO `orders` VALUES (5, '1731490486543', 5, 2, 9, 10, 2, '代取一个小快递', '校北门的菜鸟快递', '男生宿舍11栋1101室', '王大锤', '13988997788', 'http://localhost:9090/files/download/1731490480247-快递取件码.png', '2024-11-13 17:34:46', '2024-11-13 18:00:25', NULL, NULL, 0.00, NULL, '运输中');
INSERT INTO `orders` VALUES (6, '1731492278251', 5, 2, 3, 7, 2, '炸鸡汉堡', '肯德基店', '男生宿舍11栋1101室', '王大锤', '13988997788', 'http://localhost:9090/files/download/1731492276183-快递取件码.png', '2024-11-13 18:04:38', '2024-11-13 18:08:13', NULL, '2024-11-18 11:33:59', 0.00, NULL, '已签收');
INSERT INTO `orders` VALUES (7, '1731551532323', 6, 2, 2, 8, 2, '一个大箱子', '校北门快递站', '男生宿舍11栋1101室', '王大锤', '13988990088', 'http://localhost:9090/files/download/1731551524223-快递取件码.png', '2024-11-14 10:32:12', '2024-11-14 10:33:04', '2024-11-14 10:44:43', '2024-11-14 10:44:49', 5.00, '非常棒棒哦~！', '已签收');
INSERT INTO `orders` VALUES (8, '1731575384128', 8, 2, 6, 15, 5, '感冒灵颗粒', '校北门国盛大药房', '男生宿舍11栋1101室', '王大锤', '13988997788', 'http://localhost:9090/files/download/1731575379336-快递取件码.png', '2024-11-14 17:09:44', '2024-11-14 17:10:34', '2024-11-14 17:10:38', '2024-11-14 17:13:26', 4.50, '非常快！', '已签收');
INSERT INTO `orders` VALUES (9, '1731576165834', 8, 2, 10, 12, 2, '大箱子', '菜鸟驿站', '男生宿舍11栋1101室', '王大锤', '13988997788', 'http://localhost:9090/files/download/1731576164684-快递取件码.png', '2024-11-14 17:22:45', '2024-11-14 17:22:58', '2024-11-14 17:23:04', '2024-11-18 11:35:50', 4.00, '非常满意~', '已签收');
INSERT INTO `orders` VALUES (10, '1731576310286', NULL, 2, 10, 12, 2, '大箱子', '菜鸟驿站', '男生宿舍11栋1101室', '王大锤', '13988997788', NULL, '2024-11-14 17:25:10', NULL, NULL, NULL, 0.00, NULL, '已取消');
INSERT INTO `orders` VALUES (11, '1731576333486', 8, 2, 10, 12, 2, '大箱子', '菜鸟驿站', '男生宿舍11栋1101室', '王大锤', '13988997788', 'http://localhost:9090/files/download/1731576331602-快递取件码.png', '2024-11-14 17:25:33', '2024-11-14 17:25:47', '2024-11-14 17:25:49', '2024-11-18 11:35:46', 4.50, '非常满意~', '已签收');
INSERT INTO `orders` VALUES (12, '1731900316579', 11, 2, 4, 8, 2, '代取外卖汉堡', '校食堂2层肯德基', '男生宿舍11栋1101室', '王大锤', '13988997788', 'http://localhost:9090/files/download/1731576331602-快递取件码.png', '2024-11-18 11:25:16', '2024-11-18 11:32:25', '2024-11-18 11:32:27', '2024-11-18 11:35:43', 3.50, '非常满意~', '已签收');
INSERT INTO `orders` VALUES (13, '1731900316590', 12, 2, 4, 8, 2, '代取外卖汉堡', '校食堂2层肯德基', '男生宿舍11栋1101室', '王大锤', '13988997788', 'http://localhost:9090/files/download/1731576331602-快递取件码.png', '2024-11-18 11:25:16', '2024-11-18 11:32:15', '2024-11-18 11:32:17', '2024-11-18 11:35:37', 1.00, '非常差', '已签收');
INSERT INTO `orders` VALUES (14, '1731900316598', 13, 2, 4, 8, 2, '代取外卖汉堡', '校食堂2层肯德基', '男生宿舍11栋1101室', '王大锤', '13988997788', 'http://localhost:9090/files/download/1731576331602-快递取件码.png', '2024-11-18 11:25:16', '2024-11-18 11:32:04', '2024-11-18 11:32:06', '2024-11-18 11:33:53', 0.00, NULL, '已签收');
INSERT INTO `orders` VALUES (15, '1731900316570', 14, 2, 4, 8, 2, '代取外卖汉堡', '校食堂2层肯德基', '男生宿舍11栋1101室', '王大锤', '13988997788', 'http://localhost:9090/files/download/1731576331602-快递取件码.png', '2024-11-18 11:25:16', '2024-11-18 11:31:51', '2024-11-18 11:31:53', '2024-11-18 11:35:29', 2.00, '差', '已签收');
INSERT INTO `orders` VALUES (16, '1731900316559', 15, 2, 4, 8, 2, '代取外卖汉堡', '校食堂2层肯德基', '男生宿舍11栋1101室', '王大锤', '13988997788', 'http://localhost:9090/files/download/1731576331602-快递取件码.png', '2024-11-18 11:25:16', '2024-11-18 11:31:40', '2024-11-18 11:31:42', '2024-11-18 11:35:20', 5.00, '非常满意~', '已签收');
INSERT INTO `orders` VALUES (17, '1731900316529', 16, 2, 4, 8, 2, '代取外卖汉堡', '校食堂2层肯德基', '男生宿舍11栋1101室', '王大锤', '13988997788', 'http://localhost:9090/files/download/1731576331602-快递取件码.png', '2024-11-18 11:25:16', '2024-11-18 11:31:28', '2024-11-18 11:31:30', '2024-11-18 11:35:15', 4.50, '非常满意~', '已签收');
INSERT INTO `orders` VALUES (18, '1731900316596', 17, 2, 4, 8, 2, '代取外卖汉堡', '校食堂2层肯德基', '男生宿舍11栋1101室', '王大锤', '13988997788', 'http://localhost:9090/files/download/1731576331602-快递取件码.png', '2024-11-18 11:25:16', '2024-11-18 11:31:13', '2024-11-18 11:31:15', '2024-11-18 11:35:11', 3.00, '满意~', '已签收');
INSERT INTO `orders` VALUES (19, '1731900316587', NULL, 2, 4, 8, 2, '代取外卖汉堡', '校食堂2层肯德基', '男生宿舍11栋1101室', '王大锤', '13988997788', 'http://localhost:9090/files/download/1731576331602-快递取件码.png', '2024-11-18 11:25:16', NULL, NULL, NULL, 0.00, NULL, '待接单');
INSERT INTO `orders` VALUES (20, '1731900316588', NULL, 2, 4, 8, 2, '代取外卖汉堡', '校食堂2层肯德基', '男生宿舍11栋1101室', '王大锤', '13988997788', 'http://localhost:9090/files/download/1731576331602-快递取件码.png', '2024-11-18 11:25:16', NULL, NULL, NULL, 0.00, NULL, '待接单');
INSERT INTO `orders` VALUES (21, '1731900316556', 9, 2, 4, 8, 2, '代取外卖汉堡', '校食堂2层肯德基', '男生宿舍11栋1101室', '王大锤', '13988997788', 'http://localhost:9090/files/download/1731576331602-快递取件码.png', '2024-11-18 11:25:16', '2024-11-18 11:34:25', '2024-11-18 11:34:27', '2024-11-18 11:34:59', 3.50, '非常满意~', '已签收');
INSERT INTO `orders` VALUES (22, '1731900316528', 10, 2, 4, 8, 2, '代取外卖汉堡', '校食堂2层肯德基', '男生宿舍11栋1101室', '王大锤', '13988997788', 'http://localhost:9090/files/download/1731576331602-快递取件码.png', '2024-11-18 11:25:16', '2024-11-18 11:34:14', '2024-11-18 11:34:16', '2024-11-18 11:34:45', 4.00, '非常好', '已签收');

-- ----------------------------
-- Table structure for release_apply
-- ----------------------------
DROP TABLE IF EXISTS `release_apply`;
CREATE TABLE `release_apply`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `courier_id` int NULL DEFAULT NULL COMMENT '代取员id',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图片',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '申请理由',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '申请时间',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '申请状态',
  `reply` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '代取员解封申请表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of release_apply
-- ----------------------------
INSERT INTO `release_apply` VALUES (2, 17, NULL, '1111', '2024-11-18 17:08:00', '通过', NULL);
INSERT INTO `release_apply` VALUES (3, 17, 'http://localhost:9090/files/download/1731921125878-q3.png', '为什么封我？？我不服！', '2024-11-18 17:12:47', '拒绝', '因为你人品比较差！');
INSERT INTO `release_apply` VALUES (4, 17, 'http://localhost:9090/files/download/1731921232769-q1.png', '我下次不会再犯了！请求解封~', '2024-11-18 17:13:53', '通过', NULL);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `amount` int NULL DEFAULT NULL COMMENT '余额',
  `cash` double(10, 2) NULL DEFAULT NULL COMMENT '代取员钱包',
  `commission_id` int NULL DEFAULT NULL COMMENT '代取员等级',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '代取员状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '学生信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (2, '20201001', '123', '王大锤', 'http://localhost:9090/files/download/1731377671962-4.png', 'STUDENT', '13988997788', 'wdc@xm.com', 248, 0.00, NULL, NULL);
INSERT INTO `student` VALUES (5, '20201002', '123', '王二锤', 'http://localhost:9090/files/download/1731377837316-7.png', 'COURIER', '13988990099', 'wec@xm.com', 0, 3.15, 7, '正常');
INSERT INTO `student` VALUES (6, '20201003', '123', '李晓菲', 'http://localhost:9090/files/download/1731380270455-3.png', 'COURIER', '13988776655', 'lxf@xm.com', 0, 0.00, 8, '正常');
INSERT INTO `student` VALUES (7, '20201004', '123', '王帅帅', 'http://localhost:9090/files/download/1731487310428-9.png', 'STUDENT', '', NULL, 0, 0.00, NULL, NULL);
INSERT INTO `student` VALUES (8, '20201005', '123', '青哥哥', 'http://localhost:9090/files/download/1731574979043-15.png', 'COURIER', '13988776644', NULL, 0, 10.80, 7, '正常');
INSERT INTO `student` VALUES (9, '20201006', '123', '张三丰', 'http://localhost:9090/files/download/1731574979043-15.png', 'COURIER', '13988776644', NULL, 0, 7.20, 7, '正常');
INSERT INTO `student` VALUES (10, '20201007', '123', '苏大叔', 'http://localhost:9090/files/download/1731574979043-15.png', 'COURIER', '13988776644', NULL, 0, 7.20, 7, '正常');
INSERT INTO `student` VALUES (11, '20201008', '123', '李二哥', 'http://localhost:9090/files/download/1731574979043-15.png', 'COURIER', '13988776644', NULL, 0, 7.20, 7, '正常');
INSERT INTO `student` VALUES (12, '20201009', '123', '张菲菲', 'http://localhost:9090/files/download/1731574979043-15.png', 'COURIER', '13988776644', NULL, 0, 7.20, 7, '正常');
INSERT INTO `student` VALUES (13, '20201010', '123', '赵琴', 'http://localhost:9090/files/download/1731574979043-15.png', 'COURIER', '13988776644', NULL, 0, 3.60, 7, '正常');
INSERT INTO `student` VALUES (14, '20201011', '123', '王锤锤', 'http://localhost:9090/files/download/1731574979043-15.png', 'COURIER', '13988776644', NULL, 0, 7.20, 7, '正常');
INSERT INTO `student` VALUES (15, '20201012', '123', '李三妹', 'http://localhost:9090/files/download/1731574979043-15.png', 'COURIER', '13988776644', NULL, 0, 7.20, 7, '正常');
INSERT INTO `student` VALUES (16, '20201013', '123', '周萌萌', 'http://localhost:9090/files/download/1731574979043-15.png', 'COURIER', '13988776644', NULL, 0, 7.20, 7, '正常');
INSERT INTO `student` VALUES (17, '20201014', '123', '午哥哥', 'http://localhost:9090/files/download/1731574979043-15.png', 'COURIER', '13988776644', NULL, 0, 7.20, 7, '正常');

-- ----------------------------
-- Table structure for upgrade_apply
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_apply`;
CREATE TABLE `upgrade_apply`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `courier_id` int NULL DEFAULT NULL COMMENT '代取员id',
  `commission_id` int NULL DEFAULT NULL COMMENT '申请等级id',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '申请原因',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '证明照片',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '申请状态',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '申请时间',
  `reply_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '管理员回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '代取员提升等级申请' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of upgrade_apply
-- ----------------------------
INSERT INTO `upgrade_apply` VALUES (5, 5, 8, '111', 'http://localhost:9090/files/download/1731897214728-q2.png', '拒绝', '2024-11-18 10:33:36', '理由错误');
INSERT INTO `upgrade_apply` VALUES (6, 6, 8, '我想变得更优秀', 'http://localhost:9090/files/download/1731897966771-q3.png', '通过', '2024-11-18 10:46:07', NULL);

SET FOREIGN_KEY_CHECKS = 1;