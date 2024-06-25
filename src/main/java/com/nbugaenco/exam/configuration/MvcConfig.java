package com.nbugaenco.exam.configuration;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Configuration
public class MvcConfig implements WebMvcConfigurer {

  @Value("${upload.path}")
  private String uploadPath;

  @Override
  public void addResourceHandlers(ResourceHandlerRegistry registry) {
    registry.addResourceHandler("/images/**").addResourceLocations("file:" + uploadPath + "/");
    log.info("Added /images/** resources into ResourceHandlerRegistry");

    registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");
    log.info("Added /static/** resources into ResourceHandlerRegistry");
  }

}
