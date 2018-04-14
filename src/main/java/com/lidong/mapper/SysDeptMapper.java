package com.lidong.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.lidong.entity.SysDept;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


/**
 *
 * SysDept 表数据库控制层接口
 *
 */
@Repository
public interface SysDeptMapper extends BaseMapper<SysDept> {


}