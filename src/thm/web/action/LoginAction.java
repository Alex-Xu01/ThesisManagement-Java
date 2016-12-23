package thm.web.action;

import com.opensymphony.xwork2.ActionSupport;
import thm.web.dao.LoginDao;
import thm.web.dao.StudentDao;
import thm.web.entity.Result;
import thm.web.entity.TbAccountEntity;
import thm.web.entity.TbStudentEntity;

import java.util.List;

/**
 * Created by Tulip on 2016/12/5 0005.
 */
public class LoginAction extends ActionSupport {
    private TbAccountEntity account = new TbAccountEntity();
    private TbStudentEntity student;
    private String loginName;
    private String loginPwd;
    private String loginMsg;
    private int id;
    private int android;
    private Result result = new Result();
    private int failedNumber;
    private int passNumber;

    @Override
    public String execute() throws Exception {
        List<TbAccountEntity> accountEntityList;
        LoginDao loginDao = new LoginDao();
        StudentDao studentDao = new StudentDao();

        accountEntityList = loginDao.queryInfo(loginName);
        id = accountEntityList.get(0).getId();
        student = studentDao.queryByAccountId(id);


        if (!accountEntityList.isEmpty() && loginPwd.equals(accountEntityList.get(0).getLoginPwd()) && accountEntityList.get(0).getRole() == 0) {
            return "admin";
        }
        if (!accountEntityList.isEmpty() && loginPwd.equals(accountEntityList.get(0).getLoginPwd()) && accountEntityList.get(0).getRole() == 1) {
            return "teacher";
        }
        if (!accountEntityList.isEmpty() && loginPwd.equals(accountEntityList.get(0).getLoginPwd()) && accountEntityList.get(0).getRole() == 2) {
            if (android == 1){
                result.setResult(true);
                result.setStudent(student);
                return "android";
            }
            else
                return "student";
        }

        loginMsg = "用户名或密码错误！";
        return INPUT;
    }

    public TbAccountEntity getAccount() {
        return account;
    }

    public void setAccount(TbAccountEntity account) {
        this.account = account;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getLoginPwd() {
        return loginPwd;
    }

    public void setLoginPwd(String loginPwd) {
        this.loginPwd = loginPwd;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLoginMsg() {
        return loginMsg;
    }

    public void setLoginMsg(String loginMsg) {
        this.loginMsg = loginMsg;
    }

    public int getAndroid() {
        return android;
    }

    public void setAndroid(int android) {
        this.android = android;
    }

    public Result getResult() {
        return result;
    }

    public void setResult(Result result) {
        this.result = result;
    }

    public TbStudentEntity getStudent() {
        return student;
    }

    public void setStudent(TbStudentEntity student) {
        this.student = student;
    }
}
