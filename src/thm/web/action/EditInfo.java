package thm.web.action;

import com.opensymphony.xwork2.ActionSupport;
import thm.web.dao.LoginDao;
import thm.web.dao.StudentDao;
import thm.web.dao.TeacherDao;
import thm.web.entity.TbAccountEntity;
import thm.web.entity.TbStudentEntity;
import thm.web.entity.TbTeacherEntity;

/**
 * Created by Tulip on 2016/12/11 0011.
 */
public class EditInfo extends ActionSupport {
    private TbAccountEntity account = new TbAccountEntity();
    private TbStudentEntity student = new TbStudentEntity();
    private TbTeacherEntity teacher = new TbTeacherEntity();
    private int id;
    private String name;
    private String phone;
    private String email;
    private String gender;
    private String picPath;
    private int accouontId;
    private int state;
    private String updateMsg;


    public String editAccount(){
        LoginDao loginDao = new LoginDao();

        if (loginDao.update(account) > 0)
            updateMsg = "修改成功！";
        else
            updateMsg = "修改失败！";

        if (account.getRole() == 1)
            return "teacher";
        else
            return "student";
    }

    public String editStudent(){
        StudentDao studentDao = new StudentDao();

        if (studentDao.update(student) > 0)
            updateMsg = "修改成功！";
        else
            updateMsg = "修改失败！";

        return SUCCESS;
    }

    public String editTeacher(){
        TeacherDao teacherDao = new TeacherDao();

        if (teacherDao.update(teacher) > 0)
            updateMsg = "修改成功！";
        else
            updateMsg = "修改失败";

        return SUCCESS;
    }

    public TbAccountEntity getAccount() {
        return account;
    }

    public void setAccount(TbAccountEntity account) {
        this.account = account;
    }

    public String getUpdateMsg() {
        return updateMsg;
    }

    public void setUpdateMsg(String updateMsg) {
        this.updateMsg = updateMsg;
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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPicPath() {
        return picPath;
    }

    public void setPicPath(String picPath) {
        this.picPath = picPath;
    }

    public int getAccouontId() {
        return accouontId;
    }

    public void setAccouontId(int accouontId) {
        this.accouontId = accouontId;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }
}
