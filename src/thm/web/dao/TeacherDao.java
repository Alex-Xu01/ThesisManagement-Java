package thm.web.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import thm.web.entity.TbPaperinfoEntity;
import thm.web.entity.TbTeacherEntity;
import thm.web.util.HibernateSessionFactory;

import java.util.List;

/**
 * Created by Tulip on 2016/12/8 0008.
 */
public class TeacherDao {
    private int result = 0;

    public TbTeacherEntity get(int id){
        Session session = new HibernateSessionFactory().getCurrentSession();
        TbTeacherEntity teacher = (TbTeacherEntity) session.get(TbTeacherEntity.class, id);

        return teacher;
    }

    public TbTeacherEntity queryByAccountId(int accountId){
        Session session = new HibernateSessionFactory().getCurrentSession();
        Query query = session.createQuery("from TbTeacherEntity as t where t.account.id = " + accountId);

        return (TbTeacherEntity) query.uniqueResult();
    }

    public int update(TbTeacherEntity teacher){
        Session session = new HibernateSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();

        try{
            System.out.println(teacher.toString());
            session.clear();
            session.update(teacher);
            transaction.commit();
            result = 1;
        }catch (Exception e){
            if (transaction != null)
                transaction.rollback();
            e.printStackTrace();
        }finally {
            session.clear();
            session.close();
        }

        return result;
    }

    public List<TbPaperinfoEntity> queryByTeacherId(int teacherId){
        Session session = new HibernateSessionFactory().getCurrentSession();
        Query query = session.createQuery("from TbPaperinfoEntity as pi where pi.teacher.id =" + teacherId);

        return query.list();
    }
}
