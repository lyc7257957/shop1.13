package com.jk.controller;

import com.alibaba.fastjson.JSON;
import com.jk.model.LpAttribute;
import com.jk.model.LpAttributeOption;
import com.jk.model.Parameter;
import com.jk.service.LpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/4/9.
 */

@Controller
@RequestMapping("lpcontroller")
public class LpController extends BaseController {
    @Autowired
    private LpService lpService;

    @RequestMapping("parametertree")
    public String parametertree() {
        return "WEB-INF/parameterjs/parameterzong";
    }

    @RequestMapping(value = "parameterhcha")
    @ResponseBody
    public void parameterhcha(int page, int rows, Parameter parameter, HttpServletResponse response) {
        Map<String, Object> mapt = lpService.parameterhcha(page, rows, parameter);

        super.writeJson(mapt, response);
    }

    //参数新增
    @RequestMapping("seriesadd")
    public String seriesadd(Parameter parameter, HttpServletRequest requect) {


        List<Parameter> chabrand = lpService.chabrand2(parameter);
        requect.setAttribute("chabrand", chabrand);
        return "WEB-INF/parameterjs/parameterAdd";
    }

    //批量删
    @RequestMapping("deleteshan6")
    @ResponseBody            //封装类id
    public void deleteshan6(String id) {
        String[] deleid25 = id.split(",");
        lpService.deleteshan6(deleid25);
    }

    //新增
    @RequestMapping("addzeng2")
    @ResponseBody
    public Integer addzeng2(Parameter parameter) {

        int addzeng = lpService.addzeng2(parameter);
        return addzeng;
    }

    //修改回显
    @RequestMapping("huixian1")
    public String huixian1(HttpServletRequest requect, String id) {
        Parameter cshx = lpService.huixian1(id);
        requect.setAttribute("cshx", cshx);
        return "WEB-INF/parameterjs/cshxjp";
    }

    //修改
    @RequestMapping("updatexiugai4")
    @ResponseBody
    public Integer updatexiugai4(Parameter parameter) {
        int upxg = lpService.updatexiugai4(parameter);
        return upxg;
    }

    //    ------------------------商品属性-----------------------
    @RequestMapping("barameterjsp")
    public String barameterjsp() {
        return "WEB-INF/barametersp/spjsp";
    }


    //属性查
    @RequestMapping(value = "selectbarameter")
    @ResponseBody
    public void selectbarameter(int page, int rows, LpAttributeOption lpAttributeOption, HttpServletResponse response) {
        Map<String, Object> bar = lpService.selectbarameter(page, rows, lpAttributeOption);

        super.writeJson(bar, response);
    }

    //属性批量删
    @RequestMapping("deleteshuxing")
    @ResponseBody            //封装类id
    public void deleteshuxing(String attributefuid) {
        String[] deleshuxing = attributefuid.split(",");
        lpService.deleteshuxing(deleshuxing);
    }

    //属性新增跳页面
    @RequestMapping("sujsp")
    public String sujsp(LpAttribute lpAttribute, HttpServletRequest requect) {

        List<LpAttribute> sxhx = lpService.sujsp(lpAttribute);
        requect.setAttribute("sxhx", sxhx);
        return "WEB-INF/barametersp/sxadd";
    }

    //属性新增
    @RequestMapping("sxaddjiaa")
    @ResponseBody
    public Integer sxaddjiaa(LpAttribute lpAttribute) {
        int xsz = lpService.sxaddjiaa(lpAttribute);
        return xsz;
    }

}