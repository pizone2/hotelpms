package com.dev.hotelpms.room;

import com.dev.hotelpms.user.UserVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BookingDAO {
    public UserVO getSucessReserve() throws Exception;

    public UserVO getPossibleReserve() throws Exception;
}
