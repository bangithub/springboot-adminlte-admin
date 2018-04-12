package com.lidong.mapper;

import java.util.List;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.lidong.entity.SysUserRole;
import org.apache.ibatis.annotations.Mapper;

/**
 *
 * SysUserRole 表数据库控制层接口
 *
 */
@Mapper
public interface SysUserRoleMapper extends BaseMapper<SysUserRole> {

	List<String> selectPermissionByUid(String uid);

}