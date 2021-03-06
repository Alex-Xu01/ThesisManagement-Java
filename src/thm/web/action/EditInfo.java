package thm.web.action;

import com.opensymphony.xwork2.ActionSupport;
import thm.web.dao.LoginDao;
import thm.web.dao.StudentDao;
import thm.web.dao.TeacherDao;
import thm.web.entity.Result;
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
    private int id;//accountId
    private int studentId;
    private String name;
    private String phone;
    private String email;
    private String gender;
    private String picPath;
    private int state;
    private String updateMsg;
    private String newPwd;
    private Result result = new Result();
    private int android;


    public String editAccount(){
        LoginDao loginDao = new LoginDao();

        System.out.println(id);

        if (android == 1){
            account = loginDao.get(id);

            System.out.println(account);

            account.setLoginPwd(newPwd);

            if (loginDao.update(account) > 0)
                result.setResult(true);
            else
                result.setResult(false);

            return "android";
        }else {
            if (newPwd.equals(account.getLoginPwd()))
                account.setLoginPwd(newPwd);

            if (loginDao.update(account) > 0)
                updateMsg = "修改成功！";
            else
                updateMsg = "修改失败！";

            if (account.getRole() == 1)
                return "teacher";
            else
                return "student";
        }
    }

    public String editStudent(){
        StudentDao studentDao = new StudentDao();
        student=studentDao.get(studentId);

        if (android == 1){
            student.setName(name);
            student.setGender(gender);
            student.setPhone(phone);
            student.setEmail(email);

            if (studentDao.update(student) > 0)
                result.setResult(true);
            else
                result.setResult(false);

            return "android";
        }else {
            if (studentDao.update(student) > 0)
                updateMsg = "修改成功！";
            else
                updateMsg = "修改失败！";

            return SUCCESS;
        }
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

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getNewPwd() {
        return newPwd;
    }

    public void setNewPwd(String newPwd) {
        this.newPwd = newPwd;
    }

    public Result getResult() {
        return result;
    }

    public void setResult(Result result) {
        this.result = result;
    }

    public int getAndroid() {
        return android;
    }

    public void setAndroid(int android) {
        this.android = android;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }
}
