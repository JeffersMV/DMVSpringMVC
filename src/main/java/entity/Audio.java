package entity;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "Audios")
public class Audio {

    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Basic
    @Column(name = "name", nullable = true, length = 255)
    private String name;

    @Basic
    @Column(name = "date", nullable = true)
    private Timestamp date;

    @Basic
    @Column(name = "audio", nullable = true, length = 255)
    private String audio;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }


    public String getAudio() {
        return audio;
    }

    public void setAudio(String audio) {
        this.audio = audio;
    }

    @Override
    public String toString() {
        return "Audio{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", date=" + date +
                ", audio='" + audio + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Audio audio = (Audio) o;

        if (id != audio.id) return false;
        if (name != null ? !name.equals(audio.name) : audio.name != null) return false;
        if (date != null ? !date.equals(audio.date) : audio.date != null) return false;
        if (this.audio != null ? !this.audio.equals(audio.audio) : audio.audio != null) return false;
        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (date != null ? date.hashCode() : 0);
        result = 31 * result + (audio != null ? audio.hashCode() : 0);
        return result;
    }
}
