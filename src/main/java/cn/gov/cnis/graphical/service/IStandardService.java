package cn.gov.cnis.graphical.service;

import cn.gov.cnis.graphical.model.Standard;

import java.util.List;

/**
 * @author :  Amayadream
 * @date :  2016.08.04 21:47
 */
public interface IStandardService {

    List<Standard> list(int offset, int limit);

    long count();

    int insert(Standard standard);

    int update(Standard standard);

    int delete(List<String> guids);

}
