package com.service;

import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.GongdanShouliEntity;
import java.util.Map;

/**
 * 工单受理 服务类
 */
public interface GongdanShouliService extends IService<GongdanShouliEntity> {

    /**
    * @param params 查询参数
    * @return 带分页的查询出来的数据
    */
     PageUtils queryPage(Map<String, Object> params);
}