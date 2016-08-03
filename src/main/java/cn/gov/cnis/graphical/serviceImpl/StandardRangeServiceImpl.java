package cn.gov.cnis.graphical.serviceImpl;

import cn.gov.cnis.graphical.dao.IStandardRangeDao;
import cn.gov.cnis.graphical.model.StandardRange;
import cn.gov.cnis.graphical.service.IStandardRangeService;
import cn.gov.cnis.graphical.utils.StringUtil;
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

    public int insert(StandardRange range) {
        range.setGuid(StringUtil.getGuid());
        return standardRangeDao.insert(range);
    }

    public int update(StandardRange range) {
        return standardRangeDao.update(range);
    }

    public int delete(String rangeType) {
        return standardRangeDao.delete(rangeType);
    }

}
