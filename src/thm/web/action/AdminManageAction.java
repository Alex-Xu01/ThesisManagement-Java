package thm.web.action;

import com.opensymphony.xwork2.ActionSupport;
import thm.web.dao.*;
import thm.web.entity.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    private int accountNumber;
    private int depNumber;
    private int passNumber;
    private int failedNumber;
    private int android;
    private generalDataResult generalData = new generalDataResult();
    private  List<Map<String, Integer>> data = new ArrayList<>();

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
        int role = account.getRole();

        if (loginDao.insert(account) > 0){
            System.out.println(account);

            if (role == 1){
                TeacherDao teacherDao = new TeacherDao();
                TbTeacherEntity teacher = new TbTeacherEntity();
                teacher.setAccount(account);
                teacherDao.insert(teacher);
            }else {
                StudentDao studentDao = new StudentDao();
                TbStudentEntity student = new TbStudentEntity();
                student.setAccountId(account.getId());
                studentDao.insert(student);
            }
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
        int role = account.getRole();

        if (role == 1){
            TeacherDao teacherDao = new TeacherDao();
            TbTeacherEntity teacher = teacherDao.queryByAccountId(account.getId());
            teacherDao.delete(teacher);

            PapersDao papersDao = new PapersDao();
            List<TbPaperinfoEntity> list = papersDao.queryByTeacher(teacher.getId());

            for (int i = 0; i < list.size(); i++)
                papersDao.delete(list.get(i));
        }else {
            StudentDao studentDao = new StudentDao();
            TbStudentEntity student = studentDao.queryByAccountId(account.getId());
            studentDao.delete(student);

            ChooseDao chooseDao = new ChooseDao();
            List<TbPaperchoiceEntity> list = chooseDao.queryByStudent(student.getId());

            for(int i = 0; i < list.size(); i++)
                chooseDao.delete(list.get(i));
        }

        if (loginDao.delete(account) > 0){
            deleteMsg = "删除成功！";
            return SUCCESS;
        }else {
            deleteMsg = "删除失败！";
            return INPUT;
        }
    }

    public String queryNumbers(){
        LoginDao loginDao = new LoginDao();
        DepDao depDao = new DepDao();
        PapersDao papersDao = new PapersDao();

        Map<String, Integer> numbers = new HashMap();

        accountNumber = loginDao.queryAll().size();
        depNumber = depDao.queryAll().size();
        passNumber = papersDao.queryAllPassPapers().size();
        failedNumber = papersDao.queryFailedPaper().size();

        numbers.put("passNumber", passNumber);
        numbers.put("failedNumber", failedNumber);

        data.add(numbers);
        generalData.setFailedNumber(failedNumber);
        generalData.setPassNumber(passNumber);

        System.out.println(numbers.toString());

        if (android == 1)
            return "android";
        else
            return SUCCESS;
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

    public int getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(int accountNumber) {
        this.accountNumber = accountNumber;
    }

    public int getDepNumber() {
        return depNumber;
    }

    public void setDepNumber(int depNumber) {
        this.depNumber = depNumber;
    }

    public int getPassNumber() {
        return passNumber;
    }

    public void setPassNumber(int passNumber) {
        this.passNumber = passNumber;
    }

    public int getFailedNumber() {
        return failedNumber;
    }

    public void setFailedNumber(int failedNumber) {
        this.failedNumber = failedNumber;
    }

    public int getAndroid() {
        return android;
    }

    public void setAndroid(int android) {
        this.android = android;
    }

    public List<Map<String, Integer>> getData() {
        return data;
    }

    public void setData(List<Map<String, Integer>> data) {
        this.data = data;
    }

    public generalDataResult getGeneralData() {
        return generalData;
    }

    public void setGeneralData(generalDataResult generalData) {
        this.generalData = generalData;
    }
}
