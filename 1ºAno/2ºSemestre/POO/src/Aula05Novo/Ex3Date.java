package Aula05Novo;

public class Ex3Date {
    private int day;
    private int month;
    private int year;

    
    public Ex3Date(int day, int month, int year) {
        this.day = day;
        this.month = month;
        this.year = year;
        
    }
    

    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }


    public int compareTo(Ex3Date otherDate) {
        if (this.year != otherDate.year) {
            return this.year - otherDate.year;
        }
        if (this.month != otherDate.month) {
            return this.month - otherDate.month;
        }
        if (this.day != otherDate.day) {
            return this.day - otherDate.day;
        }
        return 0;
    }
    
    
}
