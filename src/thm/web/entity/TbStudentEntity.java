package thm.web.entity;

import javax.persistence.*;

/**
 * Created by Tulip on 2016/12/5 0005.
 */
@Entity
@Table(name = "tb_student", schema = "bdm257366643_db")
public class TbStudentEntity {
    private int id;
    private String name;
    private String phone;
    private String email;
    private String gender;
    private String picPath;
    private int accountId;
    private int state;
    private TbDepartmentEntity dep;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "phone")
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Basic
    @Column(name = "email")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "gender")
    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    @Basic
    @Column(name = "picPath")
    public String getPicPath() {
        return picPath;
    }

    public void setPicPath(String picPath) {
        this.picPath = picPath;
    }

    @OneToOne(targetEntity = TbDepartmentEntity.class, fetch = FetchType.EAGER)
    @JoinColumn(name = "depId", unique = true)
    public TbDepartmentEntity getDep() {
        return dep;
    }

    public void setDep(TbDepartmentEntity dep) {
        this.dep = dep;
    }

    @Basic
    @Column(name = "accountId")
    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    @Basic
    @Column(name = "state")
    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TbStudentEntity that = (TbStudentEntity) o;

        if (id != that.id) return false;
        if (accountId != that.accountId) return false;
        if (state != that.state) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (phone != null ? !phone.equals(that.phone) : that.phone != null) return false;
        if (email != null ? !email.equals(that.email) : that.email != null) return false;
        if (gender != null ? !gender.equals(that.gender) : that.gender != null) return false;
        if (picPath != null ? !picPath.equals(that.picPath) : that.picPath != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (phone != null ? phone.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (gender != null ? gender.hashCode() : 0);
        result = 31 * result + (picPath != null ? picPath.hashCode() : 0);
        result = 31 * result + accountId;
        result = 31 * result + state;
        return result;
    }

    @Override
    public String toString() {
        return "TbStudentEntity{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", gender='" + gender + '\'' +
                ", picPath='" + picPath + '\'' +
                ", accountId=" + accountId +
                ", state=" + state +
                ", dep=" + dep +
                '}';
    }
}
