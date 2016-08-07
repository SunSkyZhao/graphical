package cn.gov.cnis.graphical.dao;

import cn.gov.cnis.graphical.model.Dict;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author :  Amayadream
 * @date :  2016.08.07 21:24
 */
@Service
public interface IDictDao {

    List<Dict> list(@Param("offset") int offset, @Param("limit") int limit, @Param("dict") Dict dict);

    long count(Dict dict);

    int insert(Dict dict);

    int update(Dict dict);

    int delete(@Param("guids") List<String> guids);

}
