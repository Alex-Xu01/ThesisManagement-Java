package thm.web.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import thm.web.entity.TbStudentEntity;
import thm.web.util.HibernateSessionFactory;

/**
 * Created by Tulip on 2016/12/11 0011.
 */
public class StudentDao {
    private int result = 0;

    public TbStudentEntity queryByAccountId(int accountId){
        Session session = new HibernateSessionFactory().getCurrentSession();
        Query query = session.createQuery("from TbStudentEntity as s where s.accountId = " + accountId);

        return (TbStudentEntity) query.uniqueResult();
    }

    public int update(TbStudentEntity student){
        Session session = new HibernateSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();

        try{
            System.out.println(student.toString());
            session.clear();
            session.update(student);
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
