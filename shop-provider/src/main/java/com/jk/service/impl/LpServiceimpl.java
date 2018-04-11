package com.jk.service.impl;


import com.jk.dao.LpDao;
import com.jk.model.LpAttribute;
import com.jk.model.LpAttributeOption;
import com.jk.model.Parameter;
import com.jk.service.LpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/4/9.
 */
@Service("lpService")
public class LpServiceimpl implements LpService {
    @Autowired
    private LpDao lpDao;

    //商品参数查
    public Map<String, Object> parameterhcha(int page, int rows, Parameter parameter) {
        Map<String, Object> map = new HashMap<String, Object>();
        long tot = lpDao.queryTotal(parameter); //总条数 记住id 不能同名
        int start = (page - 1) * rows;
        int end = start + rows;
        List<Parameter> types2 = lpDao.queryTypePage(parameter, start, end);
        map.put("total", tot);
        Object rows1 = map.put("rows", types2);
        return map;
    }

    //下拉回显  新增
    public List<Parameter> chabrand2(Parameter parameter) {
        return lpDao.chabrand2(parameter);
    }

    // 批量删除  商品参数
    public void deleteshan6(String[] deleid25) {
        lpDao.deleteshan6(deleid25);
    }

    public int addzeng2(Parameter parameter) {
        return lpDao.addzeng2(parameter);
    }

    public Parameter huixian1(String id) {
        return lpDao.huixian1(id);
    }

    public int updatexiugai4(Parameter parameter) {
        return lpDao.updatexiugai4(parameter);
    }

    //----------属性管理---------------
    public Map<String, Object> selectbarameter(int page, int rows, LpAttributeOption lpAttributeOption) {
        Map<String, Object> maparr3 = new HashMap<String, Object>();
        long tot = lpDao.brand1(lpAttributeOption);
        int start = (page - 1) * rows;
        int end = start + rows;
        List<LpAttribute> types2 = lpDao.brand2(lpAttributeOption, start, end);
        maparr3.put("total", tot);
        maparr3.put("rows", types2);
        return maparr3;
    }

    public void deleteshuxing(String[] deleshuxing) {
        lpDao.deleteshuxing(deleshuxing);
    }

    public List<LpAttribute> sujsp(LpAttribute lpAttribute) {
        return lpDao.sujsp(lpAttribute);
    }

    public int sxaddjiaa(LpAttribute lpAttribute) {
        return lpDao.sxaddjiaa(lpAttribute);
    }
}
