
package org.itstep.java.web.service;

import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.SessionFactory;
import org.itstep.java.web.model.Man;
import org.itstep.java.web.model.Woman;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service(value = "userService")
@Transactional
public class ShopDAO implements ShopService {
     @Autowired
    SessionFactory sf;
    
    
    @Override
    public List<Man> allM() {
        return sf.getCurrentSession().createQuery("from tb_man").list();
    }

    @Override
    public List<Woman> allW() {
        return sf.getCurrentSession().createQuery("from tb_woman").list();
    }

    @Override
    public List<Man> allM(Integer Id) {
         return sf.getCurrentSession().createQuery("from tb_woman g where g.Id=:Id").list();   
    }

    @Override
    public List<Man> allW(Integer Id) {
       return sf.getCurrentSession().createQuery("from tb_woman g where g.Id=:Id").list();   
    }
    
}
