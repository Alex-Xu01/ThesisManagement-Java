package thm.web.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import thm.web.entity.TbAccountEntity;
import thm.web.util.HibernateSessionFactory;

import java.util.List;

/**
 * Created by Tulip on 2016/12/5 005.
 */
public class LoginDao extends CommonDao<TbAccountEntity>{
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
}
