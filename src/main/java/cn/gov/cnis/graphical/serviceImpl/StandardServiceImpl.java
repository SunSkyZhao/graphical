package cn.gov.cnis.graphical.serviceImpl;

import cn.gov.cnis.graphical.dao.IStandardDao;
import cn.gov.cnis.graphical.model.Standard;
import cn.gov.cnis.graphical.service.IStandardService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author :  Amayadream
 * @date :  2016.08.04 21:48
 */
@Service
public class StandardServiceImpl implements IStandardService {

    @Resource
    private IStandardDao standardDao;

    @Override
    public List<Standard> list(int offset, int limit) {
        return standardDao.list(offset, limit);
    }

    @Override
    public long count() {
        return standardDao.count();
    }

    @Override
    public Standard selectByPrimaryKey(String guid) {
        return standardDao.selectByPrimaryKey(guid);
    }

    @Override
    public int insert(Standard standard) {
        return standardDao.insert(standard);
    }

    @Override
    public int update(Standard standard) {
        return standardDao.update(standard);
    }

    @Override
    public int delete(List<String> guids) {
        return standardDao.delete(guids);
    }
}
