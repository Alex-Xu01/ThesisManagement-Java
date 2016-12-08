package thm.web.dao;

import org.hibernate.Session;
import thm.web.entity.TbTeacherEntity;
import thm.web.util.HibernateSessionFactory;

/**
 * Created by Tulip on 2016/12/8 0008.
 */
public class TeacherDao {
    public TbTeacherEntity get(int id){
        Session session = new HibernateSessionFactory().getCurrentSession();
        TbTeacherEntity teacher = (TbTeacherEntity) session.get(TbTeacherEntity.class, id);

        return teacher;
    }
}
