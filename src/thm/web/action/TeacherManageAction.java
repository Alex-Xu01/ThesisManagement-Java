package thm.web.action;

import com.opensymphony.xwork2.ActionSupport;
import thm.web.dao.PapersDao;
import thm.web.entity.TbPaperinfoEntity;

/**
 * Created by Tulip on 2016/12/5 0005.
 */
public class TeacherManageAction extends ActionSupport {
    private int paperId;
    private int teacherId;
    private int depId;
    private String title;
    private String subtitle;
    private String type;
    private int numbers;
    private String origin;
    private String content;
    private String teacherManage;
    private TbPaperinfoEntity paperInfo = new TbPaperinfoEntity();
    private PapersDao papersDao = new PapersDao();
    private String updateMsg;
    private String deleteMsg;
    private String verifyMsg;
    private String updatePreFor;

    @Override
    public String execute() throws Exception {
        if ("lookAll".equals(teacherManage)){
            paperInfo = papersDao.get(paperId);
            return "lookAll";
        }else if("edit".equals(teacherManage))
            return "edit";
        else{
            paperInfo = papersDao.get(paperId);
            return "chosen";
        }
    }

    public String updatePre() throws Exception{
        paperInfo = papersDao.get(paperId);
        System.out.println(updatePreFor);

        if ("edit".equals(updatePreFor))
            return "edit";
        //if ("adminVerify".equals(updatePreFor))
        else
            return "adminVerify";
    }

    public String update() throws Exception{
        if (papersDao.update(paperInfo) > 0){
            updateMsg = "更新成功！";
            return SUCCESS;
        }
        else{
            updateMsg = "更新失败！";
            return INPUT;
        }
    }

    public String updateVerifyState() throws Exception{

        if (papersDao.update(paperInfo) > 0){
            verifyMsg = "审核成功！";
            return SUCCESS;
        }
        else{
            verifyMsg = "审核失败！";
            return INPUT;
        }
    }

    public String delete() throws Exception{
        paperInfo = papersDao.get(paperId);

        if (papersDao.delete(paperInfo) > 0){
            deleteMsg = "删除成功！";
            return SUCCESS;
        }else{
            deleteMsg = "删除失败！";
            return INPUT;
        }
    }

    public int getPaperId() {
        return paperId;
    }

    public void setPaperId(int paperId) {
        this.paperId = paperId;
    }

    public String getTeacherManage() {
        return teacherManage;
    }

    public void setTeacherManage(String teacherManage) {
        this.teacherManage = teacherManage;
    }

    public TbPaperinfoEntity getPaperInfo() {
        return paperInfo;
    }

    public void setPaperInfo(TbPaperinfoEntity paperInfo) {
        this.paperInfo = paperInfo;
    }

    public String getUpdateMsg() {
        return updateMsg;
    }

    public void setUpdateMsg(String updateMsg) {
        this.updateMsg = updateMsg;
    }

    public int getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(int teacherId) {
        this.teacherId = teacherId;
    }

    public int getDepId() {
        return depId;
    }

    public void setDepId(int depId) {
        this.depId = depId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSubtitle() {
        return subtitle;
    }

    public void setSubtitle(String subtitle) {
        this.subtitle = subtitle;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getNumbers() {
        return numbers;
    }

    public void setNumbers(int numbers) {
        this.numbers = numbers;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public PapersDao getPapersDao() {
        return papersDao;
    }

    public void setPapersDao(PapersDao papersDao) {
        this.papersDao = papersDao;
    }

    public String getDeleteMsg() {
        return deleteMsg;
    }

    public void setDeleteMsg(String deleteMsg) {
        this.deleteMsg = deleteMsg;
    }

    public String getVerifyMsg() {
        return verifyMsg;
    }

    public void setVerifyMsg(String verifyMsg) {
        this.verifyMsg = verifyMsg;
    }

    public String getUpdatePreFor() {
        return updatePreFor;
    }

    public void setUpdatePreFor(String updatePreFor) {
        this.updatePreFor = updatePreFor;
    }
}
