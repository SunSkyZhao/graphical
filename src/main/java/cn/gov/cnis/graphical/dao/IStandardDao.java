package cn.gov.cnis.graphical.dao;

import cn.gov.cnis.graphical.model.Standard;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author :  Amayadream
 * @date :  2016.08.04 21:17
 */
@Repository
public interface IStandardDao {

    List<Standard> list(@Param("start") int start, @Param("end") int end);

    long count();

    int insert(Standard standard);

    int update(Standard standard);

    int delete(@Param("guids") List<String> guids);


}
