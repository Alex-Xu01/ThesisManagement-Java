package thm.web.action;

import com.opensymphony.xwork2.ActionSupport;
import thm.web.dao.LoginDao;
import thm.web.entity.TbAccountEntity;

import java.util.List;

/**
 * Created by Tulip on 2016/12/5 0005.
 */
public class LoginAction extends ActionSupport {
    private TbAccountEntity account = new TbAccountEntity();
    private String loginName;
    private String loginPwd;
    private int id;

    @Override
    public String execute() throws Exception {
        List<TbAccountEntity> accountEntityList;
        LoginDao loginDao = new LoginDao();

        accountEntityList = loginDao.queryInfo(loginName);
        id = accountEntityList.get(0).getId();

        if (!accountEntityList.isEmpty() && loginPwd.equals(accountEntityList.get(0).getLoginPwd()) && accountEntityList.get(0).getRole() == 0) {
            return "admin";
        }
        if (!accountEntityList.isEmpty() && loginPwd.equals(accountEntityList.get(0).getLoginPwd()) && accountEntityList.get(0).getRole() == 1) {
            return "teacher";
        }
        if (!accountEntityList.isEmpty() && loginPwd.equals(accountEntityList.get(0).getLoginPwd()) && accountEntityList.get(0).getRole() == 2) {
            return "student";
        }
        addFieldError("loginErrMsg", "用户不存在，请核对后输入！");
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
}
