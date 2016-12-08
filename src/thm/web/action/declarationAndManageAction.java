package thm.web.action;

import com.opensymphony.xwork2.ActionSupport;
import thm.web.dao.PapersDao;
import thm.web.dao.TeacherDao;
import thm.web.entity.TbPaperinfoEntity;
import thm.web.entity.TbTeacherEntity;

/**
 * Created by Tulip on 2016/12/8 0008.
 */
public class declarationAndManageAction extends ActionSupport{
    private int id;
    private int teacherId;
    private int depId;
    private String title;
    private String subtitle;
    private String type;
    private int number;
    private String origin;
    private String desc;
    private int result = 0;
    private String message;
    private TbTeacherEntity teacher;
    private TbPaperinfoEntity paperinfo = new TbPaperinfoEntity();

    @Override
    public String execute() throws Exception {
        TeacherDao teacherDao = new TeacherDao();
        PapersDao papersDao = new PapersDao();

        teacher = teacherDao.get(id);

        if (papersDao.insertPaper(paperinfo) > 0) {
            message = "申报成功！";
            return SUCCESS;
        }else{
            message = "申报失败！";
            return INPUT;
        }
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public int getResult() {
        return result;
    }

    public void setResult(int result) {
        this.result = result;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public TbTeacherEntity getTeacher() {
        return teacher;
    }

    public void setTeacher(TbTeacherEntity teacher) {
        this.teacher = teacher;
    }

    public TbPaperinfoEntity getPaperinfo() {
        return paperinfo;
    }

    public void setPaperinfo(TbPaperinfoEntity paperinfo) {
        this.paperinfo = paperinfo;
    }
}
