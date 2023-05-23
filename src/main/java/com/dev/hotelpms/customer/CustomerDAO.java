package com.dev.hotelpms.customer;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CustomerDAO {
    //회원 가입

    //회원 정보
    public CustomerVO getLogin(CustomerVO customerVO) throws Exception;
    public int setJoin(CustomerVO customerVO) throws Exception;

    //id중복체크
    public CustomerVO idDuplicateCheck(CustomerVO customerVO) throws Exception;
}
