package com.gdpi.security.handler;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.gdpi.entity.user.User;
import com.gdpi.entity.permission.vo.MakeMenuTree;
import com.gdpi.jwt.JwtUtils;
import com.gdpi.entity.permission.Permission;
import com.gdpi.entity.permission.vo.MenuVo;
import com.gdpi.result.ResultUtils;
import com.gdpi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @Author: cjz
 * @Date: 2020-07-31 19:51
 * @Version 1.0
 * 登录认证成功处理器
 * 登录成功要返回 json 和 token
 */
@Component("loginSuccessHandler")
public class LoginSuccessHandler implements AuthenticationSuccessHandler {
    @Autowired
    private JwtUtils jwtUtils;
    @Autowired
    private UserService userService;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,
                                        Authentication authentication) throws IOException, ServletException {
        //1.获取用户信息（即CustomerUserDetailsService返回的user）
        User user = (User) authentication.getPrincipal();
        //2.生成token
        String token = jwtUtils.generateToken(user);
        MenuVo vo = new MenuVo();
        vo.setToken(token);
        vo.setUserId(user.getUserId());
        vo.setRoleId(user.getUserRoot());
        vo.setUserNickname(user.getUserNickname());
        //3.获取用户菜单权限
        List<Permission> permissionList = user.getPermissionList();
        //4.获取code字段，返回给前端使用
        List<String> auth = permissionList.stream().filter(item -> item != null)
                .map(item -> item.getCode())
                .collect(Collectors.toList());
        vo.setAuthList(auth);
        //5.生成菜单数据树
        List<Permission> permissions = permissionList.stream().filter(item -> item != null && !item.getType().equals("2")).collect(Collectors.toList());
        List<Permission> listMenu = MakeMenuTree.makeTree(permissions, 0L);
        vo.setMenuList(listMenu);
        //6.查询路由url
        List<Permission> routerList = permissionList.stream().filter(item -> item != null && item.getType().equals("1")).collect(Collectors.toList());
        vo.setRouterList(routerList);

        String res = JSONObject.toJSONString(ResultUtils.success("认证成功",vo), SerializerFeature.DisableCircularReferenceDetect);
        httpServletResponse.setContentType("application/json;charset=UTF-8");
        ServletOutputStream out = httpServletResponse.getOutputStream();
        out.write(res.getBytes("UTF-8"));
        out.flush();
        out.close();
    }

}
