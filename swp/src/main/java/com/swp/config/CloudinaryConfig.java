package com.swp.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

@Configuration
public class CloudinaryConfig {

    @Bean
    public Cloudinary cloudinary() {
        return new Cloudinary(ObjectUtils.asMap(
            "cloud_name", "YOUR_CLOUD_NAME",
            "api_key", "YOUR_API_KEY",
            "api_secret", "YOUR_API_SECRET"
        ));
    }
}