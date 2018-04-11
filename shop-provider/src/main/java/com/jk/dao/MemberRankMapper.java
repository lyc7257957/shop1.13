package com.jk.dao;

import com.jk.model.MemberRank;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by lyc on 2018/4/10.
 */
public interface MemberRankMapper {
    public List<MemberRank> queryMemberRankList(MemberRank memberRank) ;

    public void addMemberRank(MemberRank memberRank);

    void deleteMemberRankById(@Param("id")String id);
}
