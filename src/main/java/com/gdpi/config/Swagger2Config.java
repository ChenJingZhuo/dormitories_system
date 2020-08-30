package com.gdpi.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * @Author: cjz
 * @Date: 2020-07-29 18:09
 * @Version 1.0
 * Swagger2 OpenAPI规范 https://swagger.io/specification/
 * 官方示例 https://editor.swagger.io/
 */
@Configuration
@EnableSwagger2 //开启在线接口文档
public class Swagger2Config {

    /**
     * 在线接口文档 默认地址
     * http://localhost:8080/swagger-ui/
     * http://localhost:8080/swagger-ui/index.html
     */

    //api接口包扫描路径
    public static final String SWAGGER_SCAN_BASE_PACKAGE = "com.gdpi.controller";

    public static final String VERSION = "1.0.0";

    @Bean
    public Docket createRestApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage(SWAGGER_SCAN_BASE_PACKAGE))
                .paths(PathSelectors.any()) // 可以根据url路径设置哪些请求加入文档，忽略哪些请求
                .build();
    }

    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("宿舍管理系统") //设置文档的标题
                .description("描述：宿舍管理系统 API 接口文档") // 设置文档的描述
                .contact(new Contact("作者：宿舍管理系统团队", null, null))
                .version(VERSION) // 设置文档的版本信息-> 1.0.0 Version information
                .termsOfServiceUrl("http://localhost:8080")
                .build();
    }
}
