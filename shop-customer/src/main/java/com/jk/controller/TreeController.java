package com.jk.controller;

import com.jk.model.Tree;
import com.jk.service.ITreeService;
import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by lyc on 2018/4/8.
 */

@Controller
@RequestMapping(value = "/treeController")
public class TreeController extends BaseController{

    private static final Logger logger = Logger.getLogger(TreeController.class);

    @Autowired
    private ITreeService treeService;

    //queryTreeList
    @RequestMapping("/queryTreeList")
    public void queryTreeList(Tree tree, HttpServletResponse response){
        List<Tree> treeList = treeService.queryTreeList(tree);
        super.writeJson(treeList, response);
    }
}
