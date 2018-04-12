package com.lidong.common.shiro;

import com.lidong.common.shiro.tag.ShiroTags;
import freemarker.template.TemplateException;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import java.io.IOException;

/**
 * Created by Administrator on 2016/3/15.
 */
public class ShiroTagFreeMarkerConfigurer extends FreeMarkerConfigurer {


    @Override
    public void afterPropertiesSet() throws IOException, TemplateException {
        super.afterPropertiesSet();
        this.getConfiguration().setSharedVariable("shiro", new ShiroTags());
    }

}
