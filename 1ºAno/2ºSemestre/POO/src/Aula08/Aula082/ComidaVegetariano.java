package Aula082;

public abstract class ComidaVegetariano extends Comida {

    public ComidaVegetariano(double proteinas, double calorias, double peso) {
        super(proteinas, calorias, peso);
    }

    @Override
    public String toString() {
        return "AlimentoVegetariano []";
    }
    
}