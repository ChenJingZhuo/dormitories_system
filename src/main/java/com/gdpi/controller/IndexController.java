package com.gdpi.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.context.annotation.Configuration;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.*;
import java.util.HashMap;
import java.util.Map;

/**
 * @Author: cjz
 * @Date: 2020-07-30 18:05
 * @Version 1.0
 */
@Api(tags = "宿舍管理系统-主界面 API")
@RestController
public class IndexController {

    @ApiOperation("宿舍管理系统-主界面")
    @GetMapping
    public String index(){
        return "欢迎来到-宿舍管理系统-主界面";
    }

    @ApiOperation("获取菜单列表数据")
    @GetMapping("/menuList")
    public String menuList() {
        StringBuffer stringBuffer = new StringBuffer();
        File file = null;
        FileInputStream fis = null;
        InputStreamReader isr = null;
        BufferedReader br = null;
        try {
            file = ResourceUtils.getFile("classpath:menu_list.json");
            fis = new FileInputStream(file);
            isr = new InputStreamReader(fis);
            br = new BufferedReader(isr);
            String data = null;
            while((data = br.readLine()) != null) {
                stringBuffer.append(data).append("\n");
            }
            System.out.println("menuList: "+stringBuffer.toString());
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (br != null) br.close();
                if (isr != null) isr.close();
                if (fis != null) fis.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return stringBuffer.toString();
    }

}
