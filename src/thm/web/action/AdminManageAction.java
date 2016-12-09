package thm.web.action;

import com.opensymphony.xwork2.ActionSupport;
import thm.web.dao.DepDao;
import thm.web.dao.LoginDao;
import thm.web.entity.TbAccountEntity;
import thm.web.entity.TbDepartmentEntity;

/**
 * Created by Tulip on 2016/12/9 0009.
 */
public class AdminManageAction extends ActionSupport{
    private int depId;
    private String name;
    private String telephone;
    private String address;
    private int state;
    private TbDepartmentEntity dep = new TbDepartmentEntity();
    private DepDao depDao = new DepDao();
    private String insertMsg;
    private String updateMsg;
    private String deleteMsg;
    private TbAccountEntity account = new TbAccountEntity();
    private LoginDao loginDao = new LoginDao();
    private int accountId;
    private String loginName;
    private String loginPwd;
    private int role;

    public String insertDep(){
        dep.setState(1);

        if (depDao.insert(dep) > 0){
            insertMsg = "插入成功！";
            return SUCCESS;
        }else {
            insertMsg = "插入失败！";
            return INPUT;
        }
    }

    public String updateDepPre(){
        System.out.println(depId);
        dep = depDao.get(depId);

        return SUCCESS;
    }

    public String updateDep(){
        System.out.println(dep.toString());

        if (depDao.update(dep) > 0){
            updateMsg = "更新成功！";
            return SUCCESS;
        }else {
            updateMsg = "更新失败！";
            return INPUT;
        }
    }

    public String deleteDep(){
        dep = depDao.get(depId);

        if (depDao.delete(dep) > 0){
            deleteMsg = "删除成功！";
            return SUCCESS;
        }else {
            deleteMsg = "删除失败！";
            return INPUT;
        }
    }
    
    public String insertAccount(){
        account.setState(1);

        if (loginDao.insert(account) > 0){
            insertMsg = "插入成功！";
            return SUCCESS;
        }else {
            insertMsg = "插入失败！";
            return INPUT;
        }
    }

    public String updateAccountPre(){
        System.out.println(accountId);
        account = loginDao.get(accountId);

        return SUCCESS;
    }

    public String updateAccount(){
        System.out.println(account.toString());

        if (loginDao.update(account) > 0){
            updateMsg = "更新成功！";
            return SUCCESS;
        }else {
            updateMsg = "更新失败！";
            return INPUT;
        }
    }

    public String deleteAccount(){
        account = loginDao.get(accountId);

        if (loginDao.delete(account) > 0){
            deleteMsg = "删除成功！";
            return SUCCESS;
        }else {
            deleteMsg = "删除失败！";
            return INPUT;
        }
    }


    public String accountManage(){

        return SUCCESS;
    }

    public int getDepId() {
        return depId;
    }

    public void setDepId(int depId) {
        this.depId = depId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public TbDepartmentEntity getDep() {
        return dep;
    }

    public void setDep(TbDepartmentEntity dep) {
        this.dep = dep;
    }

    public String getInsertMsg() {
        return insertMsg;
    }

    public void setInsertMsg(String insertMsg) {
        this.insertMsg = insertMsg;
    }

    public String getUpdateMsg() {
        return updateMsg;
    }

    public void setUpdateMsg(String updateMsg) {
        this.updateMsg = updateMsg;
    }

    public String getDeleteMsg() {
        return deleteMsg;
    }

    public void setDeleteMsg(String deleteMsg) {
        this.deleteMsg = deleteMsg;
    }

    public TbAccountEntity getAccount() {
        return account;
    }

    public void setAccount(TbAccountEntity account) {
        this.account = account;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
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

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }
}
