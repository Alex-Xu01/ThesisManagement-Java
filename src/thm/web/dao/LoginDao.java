package thm.web.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import thm.web.entity.TbAccountEntity;
import thm.web.util.HibernateSessionFactory;

import java.util.List;

/**
 * Created by Tulip on 2016/12/5 005.
 */
public class LoginDao {
    private int result = 0;

    public List<TbAccountEntity> queryAll(){
        Session session = new HibernateSessionFactory().getCurrentSession();
        Query query = session.createQuery("from TbAccountEntity as a order by a.id");

        return query.list();
    }

    public List<TbAccountEntity> queryInfo(String loginName){
        Session session = new HibernateSessionFactory().getCurrentSession();
        Query query = session.createQuery("from TbAccountEntity as a where a.loginName = '" + loginName + "'");
        return query.list();
    }

    public List<TbAccountEntity> queryAccount(int first, int size){
        Session session = new HibernateSessionFactory().getCurrentSession();
        Query query = session.createQuery("from TbAccountEntity a order by a.role");

        query.setFirstResult(first);
        query.setMaxResults(size);

        return query.list();
    }

    public TbAccountEntity get(int id){
        Session session = new HibernateSessionFactory().getCurrentSession();
        TbAccountEntity account = (TbAccountEntity) session.get(TbAccountEntity.class, id);

        return account;
    }
    public int insert(TbAccountEntity account){
        Session session = new HibernateSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();

        try {
            session.save(account);
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

    public int update(TbAccountEntity account){
        Session session = new HibernateSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        System.out.println("Dao : " + account.toString());

        try {
            session.merge(account);
            //session.update(account);
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

    public int delete(TbAccountEntity account){
        Session session = new HibernateSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();

        try {
            session.delete(account);
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
}
