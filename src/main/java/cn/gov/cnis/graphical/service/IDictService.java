package cn.gov.cnis.graphical.service;

import cn.gov.cnis.graphical.model.Dict;

import java.util.List;

/**
 * @author :  Amayadream
 * @date :  2016.08.07 21:40
 */
public interface IDictService {

    List<Dict> list(int offset, int limit, Dict dict);

    long count(Dict dict);

    int insert(Dict dict);

    int update(Dict dict);

    int delete(List<String> guids);

}
