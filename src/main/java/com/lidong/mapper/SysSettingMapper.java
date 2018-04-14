package com.lidong.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.lidong.entity.SysSetting;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


/**
 *
 * SysSetting 表数据库控制层接口
 *
 */
@Repository
public interface SysSettingMapper extends BaseMapper<SysSetting> {


}