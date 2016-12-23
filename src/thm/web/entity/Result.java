package thm.web.entity;

/**
 * Created by Tulip on 2016/12/23 0023.
 */
public class Result {
    private boolean result;
    private TbStudentEntity student;

    public boolean isResult() {
        return result;
    }

    public void setResult(boolean result) {
        this.result = result;
    }

    public TbStudentEntity getStudent() {
        return student;
    }

    public void setStudent(TbStudentEntity student) {
        this.student = student;
    }

}
