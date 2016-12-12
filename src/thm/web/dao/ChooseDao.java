package thm.web.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import thm.web.entity.TbPaperchoiceEntity;
import thm.web.entity.TbPaperinfoEntity;
import thm.web.util.HibernateSessionFactory;

import java.util.List;

/**
 * Created by Tulip on 2016/12/11 0011.
 */
public class ChooseDao {
    private int result = 0;

    public List<TbPaperchoiceEntity> queryChoosedPaper(int studentId){
        Session session = new HibernateSessionFactory().getCurrentSession();
        Query query = session.createQuery("from TbPaperchoiceEntity as p where p.studentId = " + studentId);

        return query.list();
    }

    public int insert(TbPaperchoiceEntity choice, TbPaperinfoEntity paper, int studentId){
        Session session = new HibernateSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();

        choice.setPaper(paper);
        choice.setTeacherId(paper.getTeacher().getId());
        choice.setStudentId(studentId);
        choice.setDepId(paper.getDep().getId());
        choice.setState(1);

        System.out.println("depId:" + choice.getDepId() +
                "studentId:" + choice.getStudentId());

        try{
            session.save(choice);
            Query query = session.createQuery("update TbPaperinfoEntity as pi set pi.numbers = pi.numbers - 1 where pi.id = " + paper.getId());
            query.executeUpdate();
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
