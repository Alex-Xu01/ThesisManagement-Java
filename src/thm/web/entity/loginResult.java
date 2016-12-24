package thm.web.entity;

/**
 * Created by Tulip on 2016/12/23 0023.
 */
public class loginResult {

    private boolean result;
    private int accountId;
    private int studentId;

    public boolean isResult() {
        return result;
    }

    public void setResult(boolean result) {
        this.result = result;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }
}
