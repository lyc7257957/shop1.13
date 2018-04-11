package com.jk.service;

import com.jk.model.MemberRank;

import java.util.List;

/**
 * Created by lyc on 2018/4/10.
 */
public interface IMemberRankLycService {


    List<MemberRank> queryMemberRankList(MemberRank memberRank);

    void addMemberRank(MemberRank memberRank);

    void deleteMemberRankById(String id);
}
