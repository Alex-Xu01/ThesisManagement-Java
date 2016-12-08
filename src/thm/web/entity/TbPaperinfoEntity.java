package thm.web.entity;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by Tulip on 2016/12/5 0005.
 */
@Entity
@Table(name = "tb_paperinfo", schema = "gtms")
public class TbPaperinfoEntity {
    private int id;
    private String title;
    private String subtitle;
    private String type;
    private int number;
    private String origin;
    private String desc;
    private int verifyState;
    private String verifyMessage;
    private Date releaseDate;
    private int state;
    private TbTeacherEntity teacher;
    private TbDepartmentEntity department;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "title")
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Basic
    @Column(name = "subtitle")
    public String getSubtitle() {
        return subtitle;
    }

    public void setSubtitle(String subtitle) {
        this.subtitle = subtitle;
    }

    @Basic
    @Column(name = "type")
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Basic
    @Column(name = "number")
    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    @Basic
    @Column(name = "origin")
    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    @Basic
    @Column(name = "desc")
    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    @Basic
    @Column(name = "verifyState")
    public int getVerifyState() {
        return verifyState;
    }

    public void setVerifyState(int verifyState) {
        this.verifyState = verifyState;
    }

    @Basic
    @Column(name = "verifyMessage")
    public String getVerifyMessage() {
        return verifyMessage;
    }

    public void setVerifyMessage(String verifyMessage) {
        this.verifyMessage = verifyMessage;
    }

    @Basic
    @Column(name = "releaseDate")
    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    @Basic
    @Column(name = "state")
    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    @OneToOne(targetEntity = TbTeacherEntity.class, fetch = FetchType.EAGER)
    @JoinColumn(name = "teacherId", unique = true)

    public TbTeacherEntity getTeacher() {
        return teacher;
    }

    public void setTeacher(TbTeacherEntity teacher) {
        this.teacher = teacher;
    }

    @OneToOne(targetEntity = TbDepartmentEntity.class, fetch = FetchType.EAGER)
    @JoinColumn(name = "depId", unique = true)

    public TbDepartmentEntity getDepartment() {
        return department;
    }

    public void setDepartment(TbDepartmentEntity department) {
        this.department = department;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TbPaperinfoEntity that = (TbPaperinfoEntity) o;

        if (id != that.id) return false;
        if (number != that.number) return false;
        if (verifyState != that.verifyState) return false;
        if (state != that.state) return false;
        if (title != null ? !title.equals(that.title) : that.title != null) return false;
        if (subtitle != null ? !subtitle.equals(that.subtitle) : that.subtitle != null) return false;
        if (type != null ? !type.equals(that.type) : that.type != null) return false;
        if (origin != null ? !origin.equals(that.origin) : that.origin != null) return false;
        if (desc != null ? !desc.equals(that.desc) : that.desc != null) return false;
        if (verifyMessage != null ? !verifyMessage.equals(that.verifyMessage) : that.verifyMessage != null)
            return false;
        if (releaseDate != null ? !releaseDate.equals(that.releaseDate) : that.releaseDate != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (subtitle != null ? subtitle.hashCode() : 0);
        result = 31 * result + (type != null ? type.hashCode() : 0);
        result = 31 * result + number;
        result = 31 * result + (origin != null ? origin.hashCode() : 0);
        result = 31 * result + (desc != null ? desc.hashCode() : 0);
        result = 31 * result + verifyState;
        result = 31 * result + (verifyMessage != null ? verifyMessage.hashCode() : 0);
        result = 31 * result + (releaseDate != null ? releaseDate.hashCode() : 0);
        result = 31 * result + state;
        return result;
    }
}
