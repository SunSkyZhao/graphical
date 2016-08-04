package cn.gov.cnis.graphical.service;

import cn.gov.cnis.graphical.model.StandardRange;

import java.util.List;

/**
 * @author :  Amayadream
 * @date :  2016.08.03 21:56
 */
public interface IStandardRangeService {

    List<StandardRange> selectByType(String rangeType);

    int insert(StandardRange range);

    int update(StandardRange range);

    int delete(List<String> guids);

}
