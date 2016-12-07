package thm.web.action;

import com.opensymphony.xwork2.ActionSupport;
import thm.web.dao.PapersDao;
import thm.web.entity.TbPaperinfoEntity;

import java.util.List;

/**
 * Created by Tulip on 2016/12/5 0005.
 */
public class TeacherFunctionAction extends ActionSupport{
    private String functionChoice;
    private List<TbPaperinfoEntity> paperList;
    private String title;
    private String subtitle;
    private String type;
    private int number;
    private String origin;
    private String desc;
    private int result;
    private String message;
    private TbPaperinfoEntity paperInfo = new TbPaperinfoEntity();

    @Override
    public String execute() throws Exception {

        PapersDao papersDao = new PapersDao();

        if ("reporting".equals(functionChoice))
                return "declaration";
        if ("manage".equals(functionChoice)){
            paperList = papersDao.queryAll();
            return "manage";
        }

        result = papersDao.insertPaper(paperInfo);

        if (result == 1)
            message = "论文申报成功！";
        else
            message = "论文申报失败！";

        return "declaration";
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
}
