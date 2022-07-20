package EP;

public class DateYMD extends Date{
    private int day;
    private int month;
    private int year;

    public DateYMD(int day, int month, int year){ //construtor da classe
        this.day = day;
        this.month = month;
        this.year = year;
        }
    

    public void set(int day, int month, int year){
        if(valid(day, month, year)){
            this.day = day;
            this.month = month;
            this.year = year;
        }
    }

    public void increment(){
        day++;
        if(day>monthDays(month, year)){
            day = 1;
            month++;
            if(month>12){
                month = 1;
                year++;
            }
        }
    }

    public void decrement(){
        day--;
        if(day<1){
            day = monthDays(month, year);
            month--;
            if(month<1){
                month = 12;
                year--;
            }
        }
    }

    public String toString(){
        return String.format("%04d-%02d-%02d",year,month,day);
    }


    public int getDay(){
        return day;
    }

    public int getMonth(){
        return month;
    }

    public int getYear(){
        return year;
    }


}