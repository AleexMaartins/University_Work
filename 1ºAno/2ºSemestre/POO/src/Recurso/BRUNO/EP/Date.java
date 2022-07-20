package EP;

public abstract class Date {
    
    public abstract void increment();

    public abstract void decrement();

    public abstract String toString();

    public static boolean validMonth(int month){
        if( month < 1 || month > 12){
            System.out.print("Introduza um mês válido [1,12]");
            return false;
        }
        else{
            return true;
        }
    }

    public static int monthDays(int month,int year){
        boolean bissexto;
        int dias;
        if((year%400==0) || ((year%4==0) && (year%100!=0))){
            bissexto = true;
        }
        else{
            bissexto = false;
        }
        
        if(bissexto){
            switch(month){
                case 4:
                case 6:
                case 9:
                case 11: dias = 30; break;
                case 2: dias = 29; break;
                default: dias = 31;
            }
        }
        else{
            switch(month){
                case 4:
                case 6:
                case 9:
                case 11: dias = 30; break;
                case 2: dias = 28; break;
                default: dias = 31;
            }
        }
        return dias;
    }

    public static boolean leapYear(int year){
        boolean bissexto;
        if((year%400==0) || ((year%4==0) && (year%100!=0))){
            bissexto = true;
            return bissexto;
        }
        else{
            bissexto = false;
            return bissexto;
        }
    }

    public static boolean valid(int day,int month,int year){
        if(!validMonth(month)){
            return false;
        }
        int maxDays = monthDays(month, year);
        if(day<1 || day>maxDays){
            return false;
        }

        return true;
    }
}
