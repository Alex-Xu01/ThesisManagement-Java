package thm.web.action;

import com.opensymphony.xwork2.ActionSupport;
import thm.web.dao.DepDao;
import thm.web.dao.LoginDao;
import thm.web.dao.PapersDao;
import thm.web.dao.TeacherDao;
import thm.web.entity.TbAccountEntity;
import thm.web.entity.TbDepartmentEntity;
import thm.web.entity.TbPaperinfoEntity;
import thm.web.entity.TbTeacherEntity;

import java.util.List;

/**
 * Created by Tulip on 2016/12/9 0009.
 */
public class QueryAll extends ActionSupport {
    private List<TbPaperinfoEntity> paperList;
    private List<TbDepartmentEntity> depList;
    private List<TbAccountEntity> accountList;
    private List<TbPaperinfoEntity> passPaperList;
    private List<TbPaperinfoEntity> passPaperList_t;
    private TbTeacherEntity teacher = new TbTeacherEntity();
    private int studentId;
    private int accountId;

    public String quertAllPapers() throws Exception {
        PapersDao papersDao = new PapersDao();

        paperList = papersDao.queryAll();
        System.out.println(paperList);

        return SUCCESS;
    }

    public String queryAllDep(){
        DepDao depDao = new DepDao();
        depList = depDao.queryAll();

        return SUCCESS;
    }

    public String queryAllAccount(){
        LoginDao loginDao = new LoginDao();
        accountList = loginDao.queryAll();

        return SUCCESS;
    }

    public String queryPassPapers(){
        PapersDao papersDao = new PapersDao();
        passPaperList = papersDao.queryPassPapers();

        return SUCCESS;
    }

    public String queryPassPaper_t(){
        PapersDao papersDao = new PapersDao();
        TeacherDao teacherDao = new TeacherDao();
        passPaperList_t = papersDao.queryPassPaperOnTeacher(teacherDao.queryByAccountId(accountId).getId());

        return SUCCESS;
    }


    public List<TbPaperinfoEntity> getPaperList() {
        return paperList;
    }

    public void setPaperList(List<TbPaperinfoEntity> paperList) {
        this.paperList = paperList;
    }

    public List<TbDepartmentEntity> getDepList() {
        return depList;
    }

    public void setDepList(List<TbDepartmentEntity> depList) {
        this.depList = depList;
    }

    public List<TbAccountEntity> getAccountList() {
        return accountList;
    }

    public void setAccountList(List<TbAccountEntity> accountList) {
        this.accountList = accountList;
    }

    public List<TbPaperinfoEntity> getPassPaperList() {
        return passPaperList;
    }

    public void setPassPaperList(List<TbPaperinfoEntity> passPaperList) {
        this.passPaperList = passPaperList;
    }

    public List<TbPaperinfoEntity> getPassPaperList_t() {
        return passPaperList_t;
    }

    public void setPassPaperList_t(List<TbPaperinfoEntity> passPaperList_t) {
        this.passPaperList_t = passPaperList_t;
    }

    public TbTeacherEntity getTeacher() {
        return teacher;
    }

    public void setTeacher(TbTeacherEntity teacher) {
        this.teacher = teacher;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }
}
