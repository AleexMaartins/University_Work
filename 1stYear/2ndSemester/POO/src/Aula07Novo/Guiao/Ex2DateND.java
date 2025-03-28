package Aula07Novo.Guiao;

public class Ex2DateND extends Ex2Date{

    private int days;

    public Ex2DateND(int days) {
        this.days = days;
    }

    /**
     * decrements one single day from current date
     */
    public void decrement() {
        days--;
    }

    /**
     * increments one single day from current date
     */
    public void increment() {
        days++;
    }

    /**
     * Returns equivalent Date in DateYMD format
     * 
     * @return DateYMD object
     */
    public Ex2DateYMD ndToYmd() {
        Ex2DateYMD temp = new Ex2DateYMD(1, 1, 2000);
        if (this.days >= 0) {
            for (int i = this.days; i > 0; i--) {
                temp.increment();
            }
        } else {
            for (int i = this.days; i < 0; i++) {
                temp.decrement();
            }
        }
        return temp;
    }

    public void set(int days) {
        this.days = days;
    }

    @Override
    public String toString() {
        return String.format("%s", ndToYmd().toString());
    }

    public int getDays() {
        return days;
    }

    public void setDays(int days) {
        this.days = days;
    }
}

