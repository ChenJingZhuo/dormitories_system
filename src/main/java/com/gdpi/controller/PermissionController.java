package com.gdpi.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.gdpi.entity.permission.Permission;
import com.gdpi.entity.permission.vo.MakeMenuTree;
import com.gdpi.entity.permission.vo.TreeVo;
import com.gdpi.mapper.PermissionMapper;
import com.gdpi.result.ResultUtils;
import com.gdpi.result.ResultVo;
import com.gdpi.service.PermissionService;
import com.gdpi.status.CodeStatus;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @Author: cjz
 * @Date: 2020-07-31 20:32
 * @Version 1.0
 * 权限管理控制器
 */
@Api(tags = "权限管理 API")
@Slf4j
@RestController
@RequestMapping("/permission")
public class PermissionController {

    @Autowired
    private PermissionService permissionService;

    @ApiOperation(value = "获取权限列表数据")
    @PostMapping("/getMenuList")
    public ResultVo getMenuList() {
        QueryWrapper<Permission> query = new QueryWrapper<>();
        query.lambda().orderByAsc(Permission::getOrderNum);
        List<Permission> list = permissionService.list(query);
        List<Permission> menuList = null;
        if(list.size() > 0){
            menuList = MakeMenuTree.makeTree(list, 0L);
        }
        return ResultUtils.success("查询列表成功", CodeStatus.SUCCESS_CODE, menuList);
    }

    @ApiOperation(value = "根据id查询编辑的权限")
    @GetMapping("/getPermissionById")
    public ResultVo getPermissionById(String id){
        Permission menu = permissionService.getById(id);
        return ResultUtils.success("查询成功",menu);
    }

    /**
     * 新增权限
     * @param permission
     * @return
     */
    @ApiOperation(value = "新增权限")
    @PostMapping("/addPermission")
    public ResultVo addPermission(Permission permission){
        System.out.println("addPermission>>>>"+permission);
        boolean b = permissionService.save(permission);
        if (b){
            return ResultUtils.success("新增权限成功");
        } else {
            return ResultUtils.success("新增权限失败");
        }
    }

    @ApiOperation(value = "根据id编辑权限")
    @PostMapping("/editSave")
    public ResultVo editSave(Permission permission){
        System.out.println("permission>>>>"+permission);
        boolean res = permissionService.updateById(permission);
        if(res){
            return ResultUtils.success("编辑成功");
        }else{
            return ResultUtils.error("编辑失败");
        }
    }

    @ApiOperation(value = "根据id删除权限")
    @GetMapping("/deleteById")
    public ResultVo deleteById(String id){
        boolean b = permissionService.removeById(id);
        if(b){
            return ResultUtils.success("删除成功!");
        }else{
            return ResultUtils.error("删除失败!");
        }
    }

    @ApiOperation(value = "新增权限，获取上级菜单树数据")
    @PostMapping("/getParentTree")
    public ResultVo getParentTree(){
        QueryWrapper<Permission> query = new QueryWrapper<>();
        query.lambda().eq(Permission::getType,"0").or().eq(Permission::getType,"1");
        List<Permission> list = permissionService.list(query);
        List<TreeVo> listTree = new ArrayList<>();
        TreeVo parentTree = new TreeVo();
        parentTree.setId(0L);
        parentTree.setPid(-1L);
        parentTree.setName("顶级菜单");
        parentTree.setOpen(true);
        parentTree.setChecked(false);
        listTree.add(parentTree);
        if(list.size() > 0){
            for(Permission p : list){
                if(p != null){
                    TreeVo tree = new TreeVo();
                    tree.setId(p.getId());
                    tree.setPid(p.getParentId());
                    tree.setName(p.getLabel());
                    tree.setOpen(true);
                    tree.setChecked(false);
                    listTree.add(tree);
                }
            }
        }
        return ResultUtils.success("成功",listTree);
    }

    @ApiOperation("模糊查询")
    @GetMapping("/selectByLike")
    public ResultVo selectByLike(String name){
        QueryWrapper<Permission> query = new QueryWrapper<>();
        query.lambda().like(Permission::getName, name).orderByAsc(Permission::getOrderNum);
        List<Permission> list = permissionService.list(query);
        List<Permission> menuList = null;
        if(list.size() > 0){
            menuList = MakeMenuTree.makeTree(list, 0L);
        }
        return ResultUtils.success("查询列表成功", CodeStatus.SUCCESS_CODE, menuList);
    }

}
