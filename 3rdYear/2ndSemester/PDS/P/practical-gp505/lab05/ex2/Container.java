package lab05.ex2;

public class Container {

    private Portion p;

    public static Container create(Portion p) {
        if (p == null) {
            return null;
        }
        Container container;

        if(p.getState() == State.Liquid) {
            if (p.getTemperature() == Temperature.WARM) {
                container = new TermicBottle();
                container.setPortion(p);
                return container;

            } else if (p.getTemperature() == Temperature.COLD) {
                container = new PlasticBottle();
                container.setPortion(p);
                return container;
                
            }
        } else if(p.getState() == State.Solid) {
            if (p.getTemperature() == Temperature.COLD) {
                container = new PlasticBag();
                container.setPortion(p);
                return container;

            } else if (p.getTemperature() == Temperature.WARM) {
                container = new Tupperware();
                container.setPortion(p);
                return container;
            } 
        } 

        return null;
    }



    public void setPortion(Portion portion) {
        p = portion;
    }



    @Override
    public String toString() {
        return String.format("%s with portion = %s ", this.getClass().getSimpleName(), p); 
    } 

    

}
