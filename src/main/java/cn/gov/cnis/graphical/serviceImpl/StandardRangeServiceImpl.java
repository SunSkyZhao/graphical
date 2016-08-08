package cn.gov.cnis.graphical.serviceImpl;

import cn.gov.cnis.graphical.dao.IStandardRangeDao;
import cn.gov.cnis.graphical.model.StandardRange;
import cn.gov.cnis.graphical.service.IStandardRangeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author :  Amayadream
 * @date :  2016.08.03 21:58
 */
@Service
public class StandardRangeServiceImpl implements IStandardRangeService {

    @Resource
    private IStandardRangeDao standardRangeDao;

    public List<StandardRange> selectByType(String rangeType) {
        return standardRangeDao.selectByType(rangeType);
    }

    @Override
    public StandardRange selectByPrimaryKey(String guid) {
        return standardRangeDao.selectByPrimaryKey(guid);
    }

    public int insert(StandardRange range) {
        return standardRangeDao.insert(range);
    }

    public int update(StandardRange range) {
        return standardRangeDao.update(range);
    }

    public int delete(List<String> guids) {
        return standardRangeDao.delete(guids);
    }

}
