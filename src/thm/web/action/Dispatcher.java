package thm.web.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by Tulip on 2016/12/9 0009.
 */
public class Dispatcher extends ActionSupport {

    public String toInsertDep(){
        return "insertDep";
    }

    public String toInsertAccount(){
        return "insertAccount";
    }
}
