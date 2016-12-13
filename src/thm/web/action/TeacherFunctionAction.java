package thm.web.action;

import com.opensymphony.xwork2.ActionSupport;
import thm.web.dao.PapersDao;
import thm.web.dao.TeacherDao;
import thm.web.entity.TbPaperinfoEntity;
import thm.web.entity.TbTeacherEntity;

import java.util.List;

/**
 * Created by Tulip on 2016/12/5 0005.
 */
public class TeacherFunctionAction extends ActionSupport{
    private int id;//accountID
    private String functionChoice;
    private List<TbPaperinfoEntity> paperList;
    private List<TbPaperinfoEntity> myPaperList;
    private TbPaperinfoEntity paperInfo = new TbPaperinfoEntity();
    private TbTeacherEntity teacher = new TbTeacherEntity();

    @Override
    public String execute() throws Exception {
        PapersDao papersDao = new PapersDao();

        if ("reporting".equals(functionChoice))
            return "declaration";
       else{
            paperList = papersDao.queryAll();
            return "manage";
        }
    }

    public String showInfo(){
        TeacherDao teacherDao = new TeacherDao();
        teacher = teacherDao.queryByAccountId(id);

        return SUCCESS;
    }

    public String showMyPapers(){
        System.out.println(id);
        TeacherDao teacherDao = new TeacherDao();
        teacher = teacherDao.queryByAccountId(id);

        myPaperList = teacherDao.queryByTeacherId(teacher.getId());

        System.out.print(myPaperList.toString());

        return SUCCESS;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFunctionChoice() {
        return functionChoice;
    }

    public void setFunctionChoice(String functionChoice) {
        this.functionChoice = functionChoice;
    }

    public List<TbPaperinfoEntity> getPaperList() {
        return paperList;
    }

    public void setPaperList(List<TbPaperinfoEntity> paperList) {
        this.paperList = paperList;
    }

    public TbPaperinfoEntity getPaperInfo() {
        return paperInfo;
    }

    public void setPaperInfo(TbPaperinfoEntity paperInfo) {
        this.paperInfo = paperInfo;
    }

    public TbTeacherEntity getTeacher() {
        return teacher;
    }

    public void setTeacher(TbTeacherEntity teacher) {
        this.teacher = teacher;
    }

    public List<TbPaperinfoEntity> getMyPaperList() {
        return myPaperList;
    }

    public void setMyPaperList(List<TbPaperinfoEntity> myPaperList) {
        this.myPaperList = myPaperList;
    }
}

