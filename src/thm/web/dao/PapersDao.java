package thm.web.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import thm.web.entity.TbPaperinfoEntity;
import thm.web.util.HibernateSessionFactory;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

/**
 * Created by Tulip on 2016/12/5 0005.
 */
public class PapersDao {
    private Integer result = 0;

    public List<TbPaperinfoEntity> queryAll(){
        Session session = new HibernateSessionFactory().getCurrentSession();
        Query query = session.createQuery("from TbPaperinfoEntity as pi order by pi.id");

        return query.list();
    }

    public List<TbPaperinfoEntity> queryPassPapers(){
        Session session = new HibernateSessionFactory().getCurrentSession();
        Query query = session.createQuery("from TbPaperinfoEntity as pi where pi.verifyState = 1 and pi.numbers > 0");

        return query.list();
    }

    public int insertPaper(TbPaperinfoEntity paperInfo){
        String currentTime = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
        Date date = Date.valueOf(currentTime);
        System.out.println(date);

        Session session = new HibernateSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();

        paperInfo.setReleaseDate(date);
        paperInfo.setContent("");
        paperInfo.setVerifyMessage("");
        paperInfo.setVerifyState(0);
        System.out.println(paperInfo);

        try {
            result = (Integer) session.save(paperInfo);
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

    public TbPaperinfoEntity get(int id){
        Session session = new HibernateSessionFactory().getCurrentSession();
        TbPaperinfoEntity paperInfo = (TbPaperinfoEntity) session.get(TbPaperinfoEntity.class, id);

        return paperInfo;
    }

    public List<TbPaperinfoEntity> queryByTeacher(int id){
        Session session = new HibernateSessionFactory().getCurrentSession();
        Query query = session.createQuery("from TbPaperinfoEntity as pi where pi.teacherId =" + id);

        return query.list();
    }

    public int update(TbPaperinfoEntity paperInfo){
        Session session = new HibernateSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();

        try {
            session.clear();
            session.update(paperInfo);
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

    public int delete(TbPaperinfoEntity paperInfo){
        Session session = new HibernateSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();

        try {
            session.delete(paperInfo);
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

    public List<TbPaperinfoEntity> queryPassPaperOnTeacher(int teacherId){
        Session session = new HibernateSessionFactory().getCurrentSession();
        Query query = session.createQuery("from TbPaperinfoEntity as pi where pi.verifyState = 1 and pi.numbers > 0 and pi.teacher.id = " + teacherId);

        return query.list();
    }
}
