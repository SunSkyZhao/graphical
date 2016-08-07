package cn.gov.cnis.graphical.serviceImpl;

import cn.gov.cnis.graphical.dao.IDictDao;
import cn.gov.cnis.graphical.model.Dict;
import cn.gov.cnis.graphical.service.IDictService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author :  Amayadream
 * @date :  2016.08.07 21:41
 */
@Service
public class DictServiceImpl implements IDictService {

    @Resource
    private IDictDao dictDao;

    @Override
    public List<Dict> list(int offset, int limit, Dict dict) {
        return dictDao.list(offset, limit, dict);
    }

    @Override
    public long count(Dict dict) {
        return dictDao.count(dict);
    }

    @Override
    public int insert(Dict dict) {
        return dictDao.insert(dict);
    }

    @Override
    public int update(Dict dict) {
        return dictDao.update(dict);
    }

    @Override
    public int delete(List<String> guids) {
        return dictDao.delete(guids);
    }
}
