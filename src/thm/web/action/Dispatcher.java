package thm.web.action;

import com.opensymphony.xwork2.ActionSupport;
import thm.web.dao.DepDao;
import thm.web.dao.LoginDao;
import thm.web.dao.StudentDao;
import thm.web.dao.TeacherDao;
import thm.web.entity.TbAccountEntity;
import thm.web.entity.TbDepartmentEntity;
import thm.web.entity.TbStudentEntity;
import thm.web.entity.TbTeacherEntity;

import java.util.List;

/**
 * Created by Tulip on 2016/12/9 0009.
 */
public class Dispatcher extends ActionSupport {
    private int id;//accountId
    private TbAccountEntity account = new TbAccountEntity();
    private TbStudentEntity student = new TbStudentEntity();
    private TbTeacherEntity teacher = new TbTeacherEntity();
    private List<TbDepartmentEntity> depList;

    public String toInsertDep(){
        return SUCCESS;
    }

    public String toInsertAccount(){
        return SUCCESS;
    }

    public String toEditAccount(){
        LoginDao loginDao = new LoginDao();
        account = loginDao.get(id);

        return SUCCESS;
    }

    public String toEditStudent(){
        StudentDao studentDao = new StudentDao();
        DepDao depDao = new DepDao();
        student = studentDao.queryByAccountId(id);
        depList = depDao.queryAll();

        return SUCCESS;
    }

    public String toEditTeacher(){
        TeacherDao teacherDao = new TeacherDao();
        DepDao depDao = new DepDao();
        teacher = teacherDao.queryByAccountId(id);
        depList = depDao.queryAll();

        return SUCCESS;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public TbAccountEntity getAccount() {
        return account;
    }

    public void setAccount(TbAccountEntity account) {
        this.account = account;
    }

    public TbStudentEntity getStudent() {
        return student;
    }

    public void setStudent(TbStudentEntity student) {
        this.student = student;
    }

    public TbTeacherEntity getTeacher() {
        return teacher;
    }

    public void setTeacher(TbTeacherEntity teacher) {
        this.teacher = teacher;
    }

    public List<TbDepartmentEntity> getDepList() {
        return depList;
    }

    public void setDepList(List<TbDepartmentEntity> depList) {
        this.depList = depList;
    }
}
