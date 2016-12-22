package thm.web.action;

import com.opensymphony.xwork2.ActionSupport;
import thm.web.dao.ChooseDao;
import thm.web.dao.PapersDao;
import thm.web.dao.StudentDao;
import thm.web.entity.TbPaperchoiceEntity;
import thm.web.entity.TbPaperinfoEntity;
import thm.web.entity.TbStudentEntity;

import java.util.List;

/**
 * Created by Tulip on 2016/12/11 0011.
 */
public class StudentFunctionAction extends ActionSupport {
    private int accountId;
    private int paperId;
    private int studentId;
    private int numbers;
    private String chooseMsg;
    private TbPaperinfoEntity paper = new TbPaperinfoEntity();
    private TbPaperchoiceEntity choice = new TbPaperchoiceEntity();
    private TbStudentEntity student = new TbStudentEntity();
    private List<TbPaperchoiceEntity> chosenList;
    private PapersDao papersDao = new PapersDao();
    private ChooseDao chooseDao = new ChooseDao();

    public String choosePaper(){
        System.out.println("paperId : " + paperId + "StudentId : " + studentId);
        paper = papersDao.get(paperId);

        if (chooseDao.ifChosen(studentId, paperId)) {
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
        StudentDao studentDao = new StudentDao();
        student = studentDao.queryByAccountId(accountId);
        if (student != null)
            chosenList = chooseDao.queryChoosedPaper(student.getId());
        else
            chosenList = chooseDao.queryChoosedPaper(studentId);

        System.out.println(chosenList);

        return SUCCESS;
    }

    public String showInfo(){
        StudentDao studentDao = new StudentDao();
        student = studentDao.queryByAccountId(accountId);

        return SUCCESS;
    }

    public String choosePaperPre(){
        PapersDao papersDao = new PapersDao();
        paper = papersDao.get(paperId);

        System.out.println("studentId : " + studentId);

        if ("details".equals(chooseMsg))
            return "details";
        else
            return SUCCESS;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
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

    public TbStudentEntity getStudent() {
        return student;
    }

    public void setStudent(TbStudentEntity student) {
        this.student = student;
    }

    public List<TbPaperchoiceEntity> getChosenList() {
        return chosenList;
    }

    public void setChosenList(List<TbPaperchoiceEntity> chosenList) {
        this.chosenList = chosenList;
    }
}
