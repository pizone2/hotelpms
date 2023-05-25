package com.dev.hotelpms.user;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserDAO {
    //회원 가입

    //회원 정보
    public UserVO getLogin(UserVO userVO) throws Exception;
    public int setJoin(UserVO userVO) throws Exception;

    //id중복체크
    public UserVO idDuplicateCheck(UserVO userVO) throws Exception;

    public UserVO getCustomer(UserVO userVO) throws Exception;
}
