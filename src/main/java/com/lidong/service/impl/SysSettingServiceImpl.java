package com.lidong.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.lidong.entity.SysSetting;
import com.lidong.mapper.SysSettingMapper;
import com.lidong.service.ISysSettingService;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;



/**
 *
 * SysSetting 表数据服务层接口实现类
 *
 */
@Service
public class SysSettingServiceImpl extends ServiceImpl<SysSettingMapper, SysSetting> implements ISysSettingService {
	
	@Cacheable(value = "settingCache")
	@Override
	public List<SysSetting> findAll() {
		return this.selectList(new EntityWrapper<SysSetting>().orderBy("sort",true));
	}


}