package com.jk.controller;

import com.jk.model.MemberRank;
import com.jk.service.IMemberRankLycService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by lyc on 2018/4/10.
 */
@Controller
@RequestMapping("/menberRankController")
public class MemberRankLycController extends BaseController{


    @Autowired
    IMemberRankLycService memberRankLycService;

    //jumpMemberRankShow
    @RequestMapping("/jumpMemberRankShow")
    public String jumpMemberRankShow() {
        return "lyc/memberRank";
    }

    //jumpAddMemberRank
    @RequestMapping("/jumpAddMemberRank")
    public String jumpAddMemberRank() {
        return "lyc/AddMemberRank";
    }

    //queryMemberRankList
    @RequestMapping("/queryMemberRankList")
    public void queryMemberRankList(MemberRank memberRank, HttpServletResponse response) {
        List<MemberRank> memberRankList = memberRankLycService.queryMemberRankList(memberRank);
        System.out.print(memberRankList);
        super.writeJson(memberRankList, response);
    }

    //addMemberRank
    @RequestMapping("/addMemberRank")
    public void addMemberRank(MemberRank memberRank) {
        memberRankLycService.addMemberRank(memberRank);
    }

    //deleteMemberRankById
    @RequestMapping("/deleteMemberRankById")
    public void deleteMemberRankById(String id, HttpServletResponse response) {
        memberRankLycService.deleteMemberRankById(id);
        super.writeJson("deleteSuccess", response);
    }
}
