package entity;

public class ReputationLog {
    private int user_id;
    private int change;
    private String dateTime;
    private String info;

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getChange() {
        return change;
    }

    public void setChange(int change) {
        this.change = change;
    }

    public String getDateTime() {
        return dateTime;
    }

    public void setDateTime(String dateTime) {
        this.dateTime = dateTime;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    @Override
    public String toString() {
        return "ReputationLog{" +
                "user_id=" + user_id +
                ", change=" + change +
                ", dateTime='" + dateTime + '\'' +
                ", info='" + info + '\'' +
                '}';
    }
}
