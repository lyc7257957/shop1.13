package com.jk.service.impl;

import com.jk.dao.MemberRankMapper;
import com.jk.model.MemberRank;
import com.jk.service.IMemberRankLycService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by lyc on 2018/4/10.
 */
@Service("memberRankLycService")
public class MemberRankLycServiceImpl implements IMemberRankLycService {
    @Autowired
    private MemberRankMapper memberRankMapper;

    public List<MemberRank> queryMemberRankList(MemberRank memberRank) {
        return memberRankMapper.queryMemberRankList(memberRank);
    }

    public void addMemberRank(MemberRank memberRank) {
        memberRankMapper.addMemberRank(memberRank);
    }

    public void deleteMemberRankById(String id) {
        memberRankMapper.deleteMemberRankById(id);
    }
}
