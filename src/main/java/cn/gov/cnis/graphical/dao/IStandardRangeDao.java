package cn.gov.cnis.graphical.dao;

import cn.gov.cnis.graphical.model.StandardRange;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author :  Amayadream
 * @date :  2016.08.03 20:32
 */
@Service
public interface IStandardRangeDao {

    List<StandardRange> selectAll(String rangeType);

    List<StandardRange> selectByType(String rangeType);

    StandardRange selectByPrimaryKey(String guid);

    int insert(StandardRange range);

    int update(StandardRange range);

    int delete(@Param("guids") List<String> guids);

}
