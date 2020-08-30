package com.gdpi;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
//@MapperScan("com.gdpi.mapper")
public class DormitoriesSystemApplication {

    public static void main(String[] args) {
        SpringApplication.run(DormitoriesSystemApplication.class, args);
    }

}
