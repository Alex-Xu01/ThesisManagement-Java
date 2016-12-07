package thm.web.util;

/**
 * Created by Tulip on 2016/12/5 0005.
 */

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

public class HibernateSessionFactory {
    private static  final Configuration conf= new Configuration();
    private static SessionFactory sessionFactory;
    private static final ThreadLocal<Session> threadLocal =new ThreadLocal<Session>();

    /**
     * 获取当前线程中的 Session对象
     * @return
     */
    public Session getCurrentSession(){
        //获取已经存在的，当前线程中的Session对象
        Session sess = threadLocal.get();
        if(sess==null||!sess.isOpen()){
            if(sessionFactory==null){
                try {
                    conf.configure();//创建配置文件对象
                    ServiceRegistry sr = new ServiceRegistryBuilder()
                            .applySettings(conf.getProperties())
                            .buildServiceRegistry();
                    sessionFactory= conf.buildSessionFactory(sr);//创建session工厂
                } catch (HibernateException e) {
                    e.printStackTrace();
                }
            }
            sess = sessionFactory.openSession();//让工厂生产一个
            threadLocal.set(sess);//加入线程本地变量
        }
        return sess;
    }
    /**
     * 关闭Session
     */
    public void closeCurrentSession(){
        Session sess =threadLocal.get();
        threadLocal.set(null);//清空 线程的 本地变量
        if(sess!=null)sess.close();
    }


}
