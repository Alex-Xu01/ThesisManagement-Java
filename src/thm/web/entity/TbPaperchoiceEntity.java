package thm.web.entity;

import javax.persistence.*;

/**
 * Created by Tulip on 2016/12/5 0005.
 */
@Entity
@Table(name = "tb_paperchoice", schema = "gtms")
public class TbPaperchoiceEntity {
    private int id;
    private int state;

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
}
