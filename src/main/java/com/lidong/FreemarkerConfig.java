package com.lidong;

import com.lidong.common.shiro.ShiroTagFreeMarkerConfigurer;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.context.annotation.Bean;

import java.util.Properties;

/**
 * Created by lidong on 2018/4/14.
 */
@Configurable
public class FreemarkerConfig {

    @Bean("freemarkerConfig")
    public ShiroTagFreeMarkerConfigurer shiroTagFreeMarkerConfigurer(){
        ShiroTagFreeMarkerConfigurer configurer =new ShiroTagFreeMarkerConfigurer();
        configurer.setTemplateLoaderPath("classpath:/templates/");
        configurer.setDefaultEncoding("UTF-8");
        Properties pp = new Properties();
        pp.setProperty("template_update_delay","0");
        pp.setProperty("default_encoding","UTF-8");
        pp.setProperty("number_format","0");
        pp.setProperty("datetime_format","0.##########");
        pp.setProperty("classic_compatible","true");
        pp.setProperty("template_exception_handler","ignore");
        configurer.setFreemarkerSettings(pp);
        return configurer;
    }



}
