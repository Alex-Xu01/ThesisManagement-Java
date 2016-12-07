package thm.web.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import thm.web.entity.TbPaperinfoEntity;
import thm.web.util.HibernateSessionFactory;

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

    public int insertPaper(TbPaperinfoEntity paperInfo){
        Session session = new HibernateSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();

        result = (Integer) session.save(paperInfo);
        transaction.commit();
        result = 1;

        session.clear();
        session.close();

        return result;
    }

    public int deleteItem(int id){
        return result;
    }
}
