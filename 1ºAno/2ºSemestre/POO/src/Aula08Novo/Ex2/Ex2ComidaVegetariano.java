package Ex2;

public abstract class Ex2ComidaVegetariano extends Ex2Comida {

    public Ex2ComidaVegetariano(double proteinas, double calorias, double peso) {
        super(proteinas, calorias, peso);
    }

    @Override
    public String toString() {
        return "AlimentoVegetariano []";
    }
    
}