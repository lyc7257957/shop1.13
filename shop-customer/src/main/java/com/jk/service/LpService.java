package com.jk.service;

import com.jk.model.LpAttribute;
import com.jk.model.LpAttributeOption;
import com.jk.model.Parameter;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/4/9.
 */
public interface LpService {

    Map<String,Object> parameterhcha(int page, int rows, Parameter parameter);
    List<Parameter> chabrand2(Parameter parameter);
    void deleteshan6(String[] deleid25);


    int addzeng2(Parameter parameter);
//回显
    Parameter huixian1(String id);
//修改
    int updatexiugai4(Parameter parameter);


    Map<String,Object> selectbarameter(int page, int rows, LpAttributeOption lpAttributeOption);

    void deleteshuxing(String[] deleshuxing);

    List<LpAttribute> sujsp(LpAttribute lpAttribute);

    int sxaddjiaa(LpAttribute lpAttribute);
}
