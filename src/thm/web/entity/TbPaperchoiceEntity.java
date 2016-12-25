package thm.web.entity;

import javax.persistence.*;

/**
 * Created by Tulip on 2016/12/5 0005.
 */
@Entity
@Table(name = "tb_paperchoice", schema = "bdm257366643_db")
public class TbPaperchoiceEntity {
    private int id;
    private int state;
    private int teacherId;
    private int studentId;
    private int depId;
    private TbPaperinfoEntity paper;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "state")
    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    @OneToOne(targetEntity = TbPaperinfoEntity.class, fetch = FetchType.EAGER)
    @JoinColumn(name = "paperId", unique = true)
    public TbPaperinfoEntity getPaper() {
        return paper;
    }

    public void setPaper(TbPaperinfoEntity paper) {
        this.paper = paper;
    }

    public int getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(int teacherId) {
        this.teacherId = teacherId;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public int getDepId() {
        return depId;
    }

    public void setDepId(int depId) {
        this.depId = depId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TbPaperchoiceEntity that = (TbPaperchoiceEntity) o;

        if (id != that.id) return false;
        if (state != that.state) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + state;
        return result;
    }

    @Override
    public String toString() {
        return "TbPaperchoiceEntity{" +
                "id=" + id +
                ", state=" + state +
                ", teacherId=" + teacherId +
                ", studentId=" + studentId +
                ", depId=" + depId +
                ", paper=" + paper +
                '}';
    }
}
