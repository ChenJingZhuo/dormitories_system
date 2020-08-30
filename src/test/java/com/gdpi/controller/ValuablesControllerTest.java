package com.gdpi.controller;

import com.gdpi.entity.Valuables;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

/**
 * @Author: cjz
 * @Date: 2020-08-08 12:41
 * @Version 1.0
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class ValuablesControllerTest {

    @Autowired
    private ValuablesController valuablesController;

    @Test
    public void selectByLike(){
        List<Valuables> valuables = valuablesController.selectByLike("1", "2", "");
        valuables.forEach(System.out::println);
    }

}
