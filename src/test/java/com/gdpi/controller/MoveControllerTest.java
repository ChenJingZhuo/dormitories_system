package com.gdpi.controller;

import com.gdpi.entity.Move;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

/**
 * @Author: cjz
 * @Date: 2020-08-07 15:54
 * @Version 1.0
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class MoveControllerTest {

    @Autowired
    private MoveController moveController;

    @Test
    public void index(){
        moveController.index();
    }

    @Test
    public void inesrtOneStu(){
        Move move = new Move();
        moveController.insertOne(move);
    }

}
