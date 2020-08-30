package com.gdpi.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gdpi.entity.UserRole;
import com.gdpi.entity.permission.Permission;
import com.gdpi.entity.permission.vo.MakeMenuTree;
import com.gdpi.entity.permission.vo.TreeVo;
import com.gdpi.entity.role.Role;
import com.gdpi.entity.role.vo.ParmVo;
import com.gdpi.entity.role.vo.PerVo;
import com.gdpi.entity.role.vo.RoleParm;
import com.gdpi.entity.role_permission.vo.PermissionRoleParmVo;
import com.gdpi.entity.user.User;
import com.gdpi.result.ResultUtils;
import com.gdpi.result.ResultVo;
import com.gdpi.service.PermissionService;
import com.gdpi.service.RolePermissionService;
import com.gdpi.service.RoleService;
import com.gdpi.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @Author: cjz
 * @Date: 2020-07-31 21:28
 * @Version 1.0
 */
@Api(tags = "角色管理 API")
@RestController
@RequestMapping(value = "role")
public class RoleController {

    @Autowired
    private RoleService roleService;
    @Autowired
    private RolePermissionService rolePermissionService;
    @Autowired
    private UserService userService;
    @Autowired
    private PermissionService permissionService;

    @ApiOperation("分配权限树查询")
    @GetMapping("/permissionTree")
    public ResultVo permissionTree(PerVo perVo){
        //System.out.println("permissonTree>>>>"+userId);
        //System.out.println("permissonTree>>>>"+roleId);
        System.out.println("permissonTree>>>>"+perVo.getUserId());
        System.out.println("permissonTree>>>>"+perVo.getRoleId());
        Long userId = Long.valueOf(perVo.getUserId());
        Long roleId = Long.valueOf(perVo.getRoleId());
        List<Permission> permissions = null;
        //1.查询当前用户的所有权限
        User user = userService.getById(userId);
        if(StringUtils.isNotEmpty(user.getIsAdmin()) && user.getIsAdmin().equals("1")){
            permissions = permissionService.list();
        }else {
            permissions = permissionService.getPermissionByUserId(userId);
        }
        //查询角色原来的数据，设置为选中
        List<Permission> permissionListByRoleId = permissionService.getPermissionListByRoleId(roleId);
        //组装成树
        List<TreeVo> listTree = new ArrayList<>();
        if (permissions != null){
            for(int i = 0; i < permissions.size(); i++){
                TreeVo tree = new TreeVo();
                tree.setId(permissions.get(i).getId());
                tree.setPid(permissions.get(i).getParentId());
                tree.setName(permissions.get(i).getLabel());
                if(permissionListByRoleId.size() > 0){
                    for(int j = 0; j < permissionListByRoleId.size(); j++){
                        if(permissions.get(i).getId().equals(permissionListByRoleId.get(j).getId())) {
                            tree.setChecked(true);
                            break;
                        }
                    }
                }
                listTree.add(tree);
            }

        }
        return ResultUtils.success("成功",listTree);
    }

    @ApiOperation("保存权限")
    @PostMapping("/saveAssignRole")
    public ResultVo saveAssignRole(@RequestBody PermissionRoleParmVo parmVo){
        if(parmVo != null && !parmVo.getList().isEmpty()){
            List<TreeVo> list = parmVo.getList();
            Long roleId = parmVo.getRoleId();
            List<Long> ids = list.stream().filter(item -> item != null).map(item -> item.getId()).collect(Collectors.toList());
            rolePermissionService.saveAssignRole(roleId,ids);

            return ResultUtils.success("分配成功!");
        }else{
            return ResultUtils.error("请选择权限!");
        }
    }

    @ApiOperation(value = "新增角色")
    @RequestMapping(value = "addRole",method = RequestMethod.POST)
    public ResultVo addRole(Role role){
        boolean b = roleService.save(role);
        if(b){
            return ResultUtils.success("新增成功!");
        }else{
            return ResultUtils.error("新增失败！");
        }
    }

    @ApiOperation(value = "根据名称查询角色")
    @GetMapping("/selectByLike")
    public ResultVo getRoleByName(String name){
        List<Role> roleList = roleService.query().like("name", name).list();
        if (roleList.size()>0){
            return ResultUtils.success("成功",roleList);
        } else {
            return ResultUtils.success("失败",roleList);
        }
    }

    @ApiOperation(value = "编辑角色")
    @RequestMapping(value = "/updateRole",method = RequestMethod.POST)
    public ResultVo updateRole(Role role){
        boolean b = roleService.updateById(role);
        if(b){
            return ResultUtils.success("编辑角色成功!");
        }else{
            return ResultUtils.error("编辑角色失败!");
        }
    }

    @ApiOperation(value = "删除角色")
    @GetMapping("/deleteOne")
    public ResultVo deleteRole(String id){
        boolean b = roleService.removeById(id);
        if(b){
            return ResultUtils.success("删除角色成功!");
        }else{
            return ResultUtils.error("删除角色失败!");
        }
    }

    @ApiOperation(value = "查询角色列表")
    @GetMapping("/getRoleList")
    public ResultVo getRoleList(ParmVo parmVo){
        IPage<Role> page = new Page();
        page.setSize(parmVo.getPageSize());
        page.setCurrent(parmVo.getCurrentPage());
        IPage<Role> roleList = roleService.page(page);
        return ResultUtils.success("查询成功",roleList);
    }


    @ApiOperation("分配角色角色列表")
    @PostMapping("/getRoleListForAssing")
    public ResultVo getRoleListForAssing(){
        List<Role> list = roleService.list();
        return ResultUtils.success("查询成功",list);
    }

    @ApiOperation("根据用户id查询角色id")
    @GetMapping("/getRoleIdByUserId")
    public ResultVo getRoleIdByUserId(Long userId){
        //UserRole userRole1 = roleService.getRoleIdByUserId(userRole.getUserId());
        UserRole userRole1 = roleService.getRoleIdByUserId(userId);
        return ResultUtils.success("成功",userRole1);
    }

    @ApiOperation("分配用户角色")
    @PostMapping("/assignRole")
    public ResultVo assignRole(@RequestBody UserRole userRole){
        roleService.assignRole(userRole);
        return ResultUtils.success("分配角色成功!");
    }

}