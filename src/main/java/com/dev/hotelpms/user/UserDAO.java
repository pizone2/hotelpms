package com.dev.hotelpms.user;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserDAO {
    //회원 가입

    //회원 정보
    public UserVO getLogin(UserVO userVO) throws Exception;
    public int setJoin(UserVO userVO) throws Exception;

    //id중복체크
    public UserVO idDuplicateCheck(UserVO userVO) throws Exception;

    public UserVO getCustomer(UserVO userVO) throws Exception;

    public UserVO findId(String email) throws  Exception;

    public UserVO findEmail(String id) throws  Exception;

    public int saveTempPw(UserVO userVO) throws  Exception;
}
