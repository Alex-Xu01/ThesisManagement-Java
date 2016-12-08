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
    private TbPaperinfoEntity paperInfo = new TbPaperinfoEntity();

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
}
