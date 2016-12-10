package thm.web.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import thm.web.entity.TbDepartmentEntity;
import thm.web.util.HibernateSessionFactory;

import java.util.List;

/**
 * Created by Tulip on 2016/12/9 0009.
 */
public class DepDao {
    private int result = 0;

    public List<TbDepartmentEntity> queryAll(){
        Session session = new HibernateSessionFactory().getCurrentSession();
        Query query = session.createQuery("from TbDepartmentEntity as d order by d.id");

        return query.list();
    }

    public TbDepartmentEntity get(int id){
        Session session = new HibernateSessionFactory().getCurrentSession();
        TbDepartmentEntity dep = (TbDepartmentEntity) session.get(TbDepartmentEntity.class, id);

        return dep;
    }
    public int insert(TbDepartmentEntity dep){
        Session session = new HibernateSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();

        try {
            session.save(dep);
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

    public int update(TbDepartmentEntity dep){
        Session session = new HibernateSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        System.out.println("Dao : " + dep.toString());

        try {
            session.update(dep);
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

    public int delete(TbDepartmentEntity dep){
        Session session = new HibernateSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();

        try {
            session.delete(dep);
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