package cn.gov.cnis.graphical.dao;

import cn.gov.cnis.graphical.model.SymbolStandard;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author :  Amayadream
 * @date :  2016.08.08 22:16
 */
@Service
public interface ISymbolStandardDao {

    List<SymbolStandard> list(@Param("offset") int offset, @Param("limit") int limit, @Param("symbol") SymbolStandard symbol);

    long count(SymbolStandard symbol);

    int insert(SymbolStandard symbol);

    int update(SymbolStandard symbol);

    int delete(List<String> guids);


}
