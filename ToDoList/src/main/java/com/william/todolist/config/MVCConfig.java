package com.william.todolist.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.nio.file.Path;
import java.nio.file.Paths;

@Configuration
public class MVCConfig implements WebMvcConfigurer {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        Path imgDir = Paths.get("./src/main/resources/static/img");
        String imgPath = imgDir.toFile().getAbsolutePath();
        registry.addResourceHandler("/img/**").addResourceLocations("file:/" + imgPath + "/");
    }
}
