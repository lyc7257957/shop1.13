package com.jk.dao;

import com.jk.model.LpAttribute;
import com.jk.model.LpAttributeOption;
import com.jk.model.Parameter;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2018/4/9.
 */
public interface LpDao {

     long queryTotal(Parameter parameter);
     List<Parameter> queryTypePage(Parameter parameter, @Param("start") int start, @Param("end") int end);
     List<Parameter> chabrand2(Parameter parameter);
     void deleteshan6(@Param(value = "shan23") String[] deleid25);

     int addzeng2(Parameter parameter);
//新增
    Parameter huixian1(String id);

     int updatexiugai4(Parameter parameter);
//---属性--


    List<LpAttribute> brand2(LpAttributeOption lpAttributeOption, @Param("start") int start, @Param("end") int end);

    long brand1(LpAttributeOption lpAttributeOption);

    void deleteshuxing(@Param(value = "sx") String[] deleshuxing);

    List<LpAttribute> sujsp(LpAttribute lpAttribute);

    int sxaddjiaa(LpAttribute lpAttribute);
}
