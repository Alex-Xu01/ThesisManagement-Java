package thm.web.action;

import com.opensymphony.xwork2.ActionSupport;
import thm.web.dao.ChooseDao;
import thm.web.dao.PapersDao;
import thm.web.entity.TbPaperchoiceEntity;
import thm.web.entity.TbPaperinfoEntity;

import java.util.List;

/**
 * Created by Tulip on 2016/12/11 0011.
 */
public class StudentFunctionAction extends ActionSupport {
    private int paperId;
    private int studentId;
    private int numbers;
    private String chooseMsg;
    private TbPaperinfoEntity paper = new TbPaperinfoEntity();
    private TbPaperchoiceEntity choice = new TbPaperchoiceEntity();
    private List<TbPaperchoiceEntity> chosenList;
    private PapersDao papersDao = new PapersDao();
    private ChooseDao chooseDao = new ChooseDao();

    public String choosePaper(){
        paper = papersDao.get(paperId);

        System.out.println("StudentId:" + studentId);

        if (numbers == 0){
            chooseMsg = "您选择论文题目人数已满，请选择其他题目";
            return INPUT;
        }

        if (chooseDao.insert(choice, paper, studentId) > 0){
            chooseMsg = "选择成功！";
            return SUCCESS;
        }else{
            chooseMsg = "选择失败！";
            return INPUT;
        }

    }

    public String lookChoose(){
        System.out.println(studentId);
        ChooseDao chooseDao = new ChooseDao();
        chosenList = chooseDao.queryChoosedPaper(studentId);

        System.out.println(chosenList);

        return SUCCESS;
    }

    public int getPaperId() {
        return paperId;
    }

    public void setPaperId(int paperId) {
        this.paperId = paperId;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public int getNumbers() {
        return numbers;
    }

    public void setNumbers(int numbers) {
        this.numbers = numbers;
    }

    public String getChooseMsg() {
        return chooseMsg;
    }

    public void setChooseMsg(String chooseMsg) {
        this.chooseMsg = chooseMsg;
    }

    public TbPaperinfoEntity getPaper() {
        return paper;
    }

    public void setPaper(TbPaperinfoEntity paper) {
        this.paper = paper;
    }

    public TbPaperchoiceEntity getChoice() {
        return choice;
    }

    public void setChoice(TbPaperchoiceEntity choice) {
        this.choice = choice;
    }

    public List<TbPaperchoiceEntity> getChosenList() {
        return chosenList;
    }

    public void setChosenList(List<TbPaperchoiceEntity> chosenList) {
        this.chosenList = chosenList;
    }
}
