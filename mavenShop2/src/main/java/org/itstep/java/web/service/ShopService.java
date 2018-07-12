
package org.itstep.java.web.service;

import java.util.List;
import org.itstep.java.web.model.Man;
import org.itstep.java.web.model.Woman;


public interface ShopService {
     List<Man> allM();
     List<Man> allM (Integer Id);
     List <Woman> allW();
     List<Man> allW (Integer Id);
}
