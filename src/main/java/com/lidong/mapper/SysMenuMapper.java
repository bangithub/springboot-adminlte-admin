package com.lidong.mapper;

import java.util.List;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.lidong.entity.SysMenu;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;



/**
 *
 * SysMenu 表数据库控制层接口
 *
 */
@Mapper
public interface SysMenuMapper extends BaseMapper<SysMenu> {

	List<String> selectMenuIdsByuserId(String uid);

	List<String> selectResourceByUid(@Param("uid") String uid);

}