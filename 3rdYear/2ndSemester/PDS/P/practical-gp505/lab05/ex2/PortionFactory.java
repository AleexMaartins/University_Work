package lab05.ex2;

public class PortionFactory {

    public static Portion create(String foodType, Temperature temp) {
        Portion portion = null;

        if (foodType.equalsIgnoreCase("Beverage")){
            if (temp == Temperature.WARM){
                portion = new Milk();
            }
            else if (temp == Temperature.COLD){
                portion = new FruitJuice("Orange"); 
            }

        }
        else if (foodType.equalsIgnoreCase("Meat")){
            if (temp == Temperature.WARM){
                portion = new Pork();
            }
            else if (temp == Temperature.COLD){
                portion = new Tuna();
            }

        }
        else{
            System.out.println("Invalid food type");
        }
        

        return portion;
    }

}
