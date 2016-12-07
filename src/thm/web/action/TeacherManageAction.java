package thm.web.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by Tulip on 2016/12/5 0005.
 */
public class TeacherManageAction extends ActionSupport {
    private String teacherManage;

    @Override
    public String execute() throws Exception {
        if ("lookAll".equals(teacherManage)){

            return "lookAll";
        }else if ("edit".equals(teacherManage)){
            return "edit";
        }else{

            return "delete";
        }
    }

    public String getTeacherManage() {
        return teacherManage;
    }

    public void setTeacherManage(String teacherManage) {
        this.teacherManage = teacherManage;
    }
}
