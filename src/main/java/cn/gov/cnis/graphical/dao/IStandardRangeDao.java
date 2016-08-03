package cn.gov.cnis.graphical.dao;

import cn.gov.cnis.graphical.model.StandardRange;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author :  Amayadream
 * @date :  2016.08.03 20:32
 */
@Repository
public interface IStandardRangeDao {

    List<StandardRange> select();

    int insert(StandardRange range);

    int update(StandardRange range);

    int delete(StandardRange range);

}
