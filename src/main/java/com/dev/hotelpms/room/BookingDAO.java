package com.dev.hotelpms.room;

import com.dev.hotelpms.user.UserVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BookingDAO {
    public List<ReservedVO> getSucessReserve(String roomType) throws Exception;

    public List<ReservedVO> getPossibleReserve() throws Exception;
}
