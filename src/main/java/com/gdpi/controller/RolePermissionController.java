package com.gdpi.controller;


import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.gdpi.entity.user.User;
import com.gdpi.entity.permission.Permission;
import com.gdpi.entity.permission.vo.TreeVo;
import com.gdpi.entity.role_permission.vo.PermissionRoleParmVo;
import com.gdpi.result.ResultUtils;
import com.gdpi.result.ResultVo;
import com.gdpi.service.PermissionService;
import com.gdpi.service.RolePermissionService;
import com.gdpi.service.UserService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author cjz
 * @since 2020-08-14
 */
@RestController
@RequestMapping("/rolePermission")
public class RolePermissionController {

}

